@TestOn('vm')
library impl_generation_test;

import 'package:analyzer/analyzer.dart' hide startsWith;
import 'package:barback/barback.dart';
import 'package:mockito/mockito.dart';
import 'package:source_span/source_span.dart';
import 'package:test/test.dart';
import 'package:web_skin_dart/src/transformer/declaration_parsing.dart';
import 'package:web_skin_dart/src/transformer/impl_generation.dart';
import 'package:web_skin_dart/src/transformer/source_file_helpers.dart';

main() {
  group('ComponentDeclarations', () {
    ImplGenerator implGenerator;

    MockTransformLogger logger;
    SourceFile sourceFile;
    TransformedSourceFile transformedFile;
    CompilationUnit unit;
    ComponentDeclarations declarations;
  
    void setUpAndParse(String source) {
      logger = new MockTransformLogger();

      sourceFile = new SourceFile(source);
      transformedFile = new TransformedSourceFile(sourceFile);

      unit = parseCompilationUnit(source);
      declarations = new ComponentDeclarations(unit, sourceFile, logger);
      implGenerator = new ImplGenerator(logger, transformedFile);
    }

    void setUpAndGenerate(String source) {
      setUpAndParse(source);

      implGenerator = new ImplGenerator(logger, transformedFile);
      implGenerator.generateComponent(declarations);
    }

    void verifyNoErrors() {
      // Check all permutations of optional parameters being specified
      // since they look like different calls to Mockito.
      verifyNever(logger.warning(any));
      verifyNever(logger.warning(any, span: any));
      verifyNever(logger.warning(any, asset: any));
      verifyNever(logger.warning(any, span: any, asset: any));
      verifyNever(logger.error(any));
      verifyNever(logger.error(any, span: any));
      verifyNever(logger.error(any, asset: any));
      verifyNever(logger.error(any, span: any, asset: any));

      expect(declarations.hasErrors, isFalse);
    }

    void verifyTransformedSourceIsValid() {
      expect(() {
        parseCompilationUnit(transformedFile.getTransformedText());
      }, isNot(throws), reason: 'transformed source should parse without errors');
    }
      
    group('generates an implementation that parses correctly, preserving line numbers', () {
      void preservedLineNumbersTest(String source) {
        var lines = source.split('\n');
        for (int i = 0; i < lines.length; i++) {
          lines[i] = '/* line $i start */${lines[i]}';
        }
        String numberedSource = lines.join('\n');

        setUpAndParse(numberedSource);

        implGenerator.generateComponent(declarations);

        String transformedSource = transformedFile.getTransformedText();
        var transformedLines = transformedSource.split('\n');
        for (int i = 0; i < lines.length; i++) {
          expect(transformedLines[i], startsWith('/* line $i start */'));
        }
      }

      tearDown(() {
        verifyNoErrors();
        verifyTransformedSourceIsValid();
      });

      test('stateful components', () {
        preservedLineNumbersTest('''
          @Factory()
          UiFactory<FooProps> Foo;

          @Props()
          class FooProps {
            var bar;
            var baz;
          }

          @State()
          class FooState {
            var bar;
            var baz;
          }

          @Component()
          class FooComponent {
            render() {
              return null;
            }
          }
        ''');
      });

      test('props mixins', () {
        preservedLineNumbersTest('''
          @PropsMixin() class FooPropsMixin {
            Map get props;

            var bar;
            var baz;
          }
        ''');
      });

      test('state mixins', () {
        preservedLineNumbersTest('''
          @StateMixin() class FooStateMixin {
            Map get state;

            var bar;
            var baz;
          }
        ''');
      });

      test('abstract props classes', () {
        preservedLineNumbersTest('''
          @AbstractProps() class AbstractFooProps {
            var bar;
            var baz;
          }
        ''');
      });

      test('abstract state classes', () {
        preservedLineNumbersTest('''
          @AbstractState() class AbstractFooState {
            var bar;
            var baz;
          }
        ''');
      });

      group('accessors', () {
        test('with doc comments and annotations', () {
          preservedLineNumbersTest('''
            @AbstractProps()
            class FooProps {
              /// Doc comment
              @Annotation()
              var bar;
            }
          ''');
        });

        group('defined using comma-separated variables', () {
          test('on the same line', () {
            preservedLineNumbersTest('''
              @AbstractProps()
              class FooProps {
                var bar, baz, qux;
              }
            ''');
          });

          test('on separate lines', () {
            String numberedSource = '''
              /* line 0 start */@AbstractProps()
              /* line 1 start */class FooProps {
              /* line 2 start */  var bar,
              /* line 3 start */      baz,
              /* line 4 start */      qux;
              /* line 5 start */}
            ''';

            setUpAndParse(numberedSource);

            implGenerator.generateComponent(declarations);

            String transformedSource = transformedFile.getTransformedText();
            var transformedLines = transformedSource.split('\n');

            expect(transformedLines[0].trimLeft(), startsWith('/* line 0 start */'));
            expect(transformedLines[1].trimLeft(), startsWith('/* line 1 start */'));
            expect(transformedLines[2].trimLeft(), startsWith('/* line 2 start */'));
            // The leading comments on lines 3 and 4 get stripped out since comments
            // are not currently preserved for comma-separated accessors.
            // Uncomment these tests after comment preservation is added.
//            expect(transformedLines[3].trimLeft(), startsWith('/* line 3 start */'));
//            expect(transformedLines[4].trimLeft(), startsWith('/* line 4 start */'));
            expect(transformedLines[5].trimLeft(), startsWith('/* line 5 start */'));
          });
        });
      });
    });
    
    group('logs an error when', () {
      group('a factory is', () {
        const String restOfComponent = '''
          @Props()
          class FooProps {}

          @Component()
          class FooComponent {}
        ''';

        test('declared using multiple variables', () {
          setUpAndGenerate('''
            @Factory()
            UiFactory<FooProps> Foo, Bar;

            $restOfComponent
          ''');

          verify(logger.error('Factory declarations must a single variable.', span: any));
        });

        test('declared with an initializer', () {
          setUpAndGenerate('''
            @Factory()
            UiFactory<FooProps> Foo = null;

            $restOfComponent
          ''');

          verify(logger.error('Factory variables are stubs for the generated factories, and should not have initializers.', span: any));
        });
      });

      group('a props mixin is', () {
        const String expectedPropsGetterError =
            'Props mixin classes must declare an abstract props getter `Map get props;` '
            'so that they can be statically analyzed properly.';

        test('declared without an abstract `props` getter', () {
          setUpAndGenerate('''
            @PropsMixin()
            class FooPropsMixin {
              var bar;
            }
          ''');
          verify(logger.error(expectedPropsGetterError, span: any));
        });

        group('declared with a malformed `props` getter:', () {
          test('a field', () {
            setUpAndGenerate('''
              @PropsMixin()
              class FooPropsMixin {
                Map props;

                var bar;
              }
            ''');
            verify(logger.error(expectedPropsGetterError, span: any));
          });

          test('a getter of the wrong type', () {
            setUpAndGenerate('''
              @PropsMixin()
              class FooPropsMixin {
                NotAMap get props;

                var bar;
              }
            ''');
            verify(logger.error(expectedPropsGetterError, span: any));
          });

          test('an untyped getter', () {
            setUpAndGenerate('''
              @PropsMixin()
              class FooPropsMixin {
                get props;

                var bar;
              }
            ''');
            verify(logger.error(expectedPropsGetterError, span: any));
          });

          test('a concrete getter', () {
            setUpAndGenerate('''
              @PropsMixin()
              class FooPropsMixin {
                Map get props => null;

                var bar;
              }
            ''');
            verify(logger.error(expectedPropsGetterError, span: any));
          });
        });
      });

      group('a state mixin is', () {
        const String expectedStateGetterError =
            'State mixin classes must declare an abstract state getter `Map get state;` '
            'so that they can be statically analyzed properly.';

        test('declared without an abstract `state` getter', () {
          setUpAndGenerate('''
            @StateMixin()
            class FooStateMixin {
              var bar;
            }
          ''');
          verify(logger.error(expectedStateGetterError, span: any));
        });

        group('declared with a malformed `state` getter:', () {
          test('a field', () {
            setUpAndGenerate('''
              @StateMixin()
              class FooStateMixin {
                Map state;

                var bar;
              }
            ''');
            verify(logger.error(expectedStateGetterError, span: any));
          });

          test('a getter of the wrong type', () {
            setUpAndGenerate('''
              @StateMixin()
              class FooStateMixin {
                NotAMap get state;

                var bar;
              }
            ''');
            verify(logger.error(expectedStateGetterError, span: any));
          });

          test('an untyped getter', () {
            setUpAndGenerate('''
              @StateMixin()
              class FooStateMixin {
                get state;

                var bar;
              }
            ''');
            verify(logger.error(expectedStateGetterError, span: any));
          });

          test('a concrete getter', () {
            setUpAndGenerate('''
              @StateMixin()
              class FooStateMixin {
                Map get state => null;

                var bar;
              }
            ''');
            verify(logger.error(expectedStateGetterError, span: any));
          });
        });
      });

      test('accessors are declared as fields with initializers', () {
        setUpAndGenerate('''
          @PropsMixin()
          class FooPropsMixin {
            var bar = null;
          }
        ''');
        verify(logger.error('Fields are stubs for generated setters/getters and should not have initializers.', span: any));
      });
    });
  });
}


class MockTransformLogger extends Mock implements TransformLogger {
  noSuchMethod(i) => super.noSuchMethod(i);
}
