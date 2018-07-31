part of 'generic_inheritance.dart';

abstract class $GenericSubPropsAccessorsMixin {
  Map get props;

  @override
  String get subProp => props[_$key__subProp__subProps];
  @override
  set subProp(String value) => props[_$key__subProp__subProps] = value;

  static const PropDescriptor _$prop__subProp__subProps = const PropDescriptor(_$key__subProp__subProps);
  static const List<PropDescriptor> $props = const [_$prop__subProp__subProps];
  static const String _$key__subProp__subProps = 'GenericSubProps.subProp';
  static const List<String> $propKeys = const [_$key__subProp__subProps];
}

abstract class $GenericSuperPropsAccessorsMixin {
  Map get props;

  @override
  String get superProp => props[_$key__superProp__GenericSuperProps];
  @override
  set superProp(String value) => props[_$key__superProp__GenericSuperProps] = value;

  /* GENERATED CONSTANTS */
  static const ConsumedProps $consumedProps = const ConsumedProps($props, $propKeys);
  static const PropDescriptor _$prop__superProp__GenericSuperProps = const PropDescriptor(_$key__superProp__GenericSuperProps);
  static const List<PropDescriptor> $props = const [_$prop__superProp__GenericSuperProps];
  static const String _$key__superProp__GenericSuperProps = 'GenericSuperProps.superProp';
  static const List<String> $propKeys = const [_$key__superProp__GenericSuperProps];
}



_$GenericSubPropsImpl $GenericSub([Map backingProps]) => new _$GenericSubPropsImpl(backingProps);

// Concrete props implementation.
//
// Implements constructor and backing map, and links up to generated component factory.
class _$GenericSubPropsImpl extends GenericSubProps with $GenericSuperPropsAccessorsMixin, $GenericSubPropsAccessorsMixin {
  static const List<PropDescriptor> $props = const []; // FIXME concatenate all accessors mixed in
  static const List<String> $propKeys = const []; // FIXME concatenate all accessors mixed in

  /* GENERATED CONSTANTS */
  static const ConsumedProps $consumedProps = const ConsumedProps($props, $propKeys);

  /// The backing props map proxied by this class.
  @override
  final Map props;

  _$GenericSubPropsImpl(Map backingMap) : this.props = backingMap ?? ({});

  /// Let [UiProps] internals know that this class has been generated.
  @override
  bool get $isClassGenerated => true;

  /// The [ReactComponentFactory] associated with the component built by this class.
  @override
  Function get componentFactory => $GenericSubComponentFactory;

  /// The default namespace for the prop getters/setters generated for this class.
  @override
  String get propKeyNamespace => 'GenericSubProps.';

  // Work around https://github.com/dart-lang/sdk/issues/16030 by making
  // the original props class abstract and redeclaring `call` in the impl class.
  @override
  call([children, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40]);
}
// Concrete component implementation mixin.
//
// Implements typed props/state factories, defaults `consumedPropKeys` to the keys
// generated for the associated props class.
class _$GenericSubComponentImpl extends GenericSubComponent {
  _$GenericSubComponentImpl() : super._$();

  @override
  _$GenericSubPropsImpl typedPropsFactory(Map backingMap) => new _$GenericSubPropsImpl(backingMap);

  /// Let [UiComponent] internals know that this class has been generated.
  @override
  bool get $isClassGenerated => true;

  /// The default consumed props, taken from GenericSubProps.
  /// Used in [UiProps.consumedProps] if [consumedProps] is not overridden.
  @override
  final List<ConsumedProps> $defaultConsumedProps = const [_$GenericSubPropsImpl.$consumedProps];
}
// React component factory implementation.
//
// Registers component implementation and links type meta to builder factory.
final $GenericSubComponentFactory = registerComponent(() => new _$GenericSubComponentImpl(),
    builderFactory: GenericSub,
    componentClass: GenericSubComponent,
    isWrapper: false,
    parentType: null,
    displayName: 'GenericSub'
);


_$GenericSuperPropsImpl $GenericSuper([Map backingProps]) => new _$GenericSuperPropsImpl(backingProps);
// Concrete props implementation.
//
// Implements constructor and backing map, and links up to generated component factory.
class _$GenericSuperPropsImpl extends GenericSuperProps with $GenericSuperPropsAccessorsMixin {
  static const List<PropDescriptor> $props = const []; // FIXME concatenate all accessors mixed in
  static const List<String> $propKeys = const []; // FIXME concatenate all accessors mixed in

  /* GENERATED CONSTANTS */
  static const ConsumedProps $consumedProps = const ConsumedProps($props, $propKeys);

  /// The backing props map proxied by this class.
  @override
  final Map props;

  _$GenericSuperPropsImpl(Map backingMap) : this.props = backingMap ?? ({});

  /// Let [UiProps] internals know that this class has been generated.
  @override
  bool get $isClassGenerated => true;

  /// The [ReactComponentFactory] associated with the component built by this class.
  @override
  Function get componentFactory => $GenericSuperComponentFactory;

  /// The default namespace for the prop getters/setters generated for this class.
  @override
  String get propKeyNamespace => 'GenericSuperProps.';

  // Work around https://github.com/dart-lang/sdk/issues/16030 by making
  // the original props class abstract and redeclaring `call` in the impl class.
  @override
  call([children, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40]);
}
// Concrete component implementation mixin.
//
// Implements typed props/state factories, defaults `consumedPropKeys` to the keys
// generated for the associated props class.
class _$GenericSuperComponentImpl extends GenericSuperComponent {
  _$GenericSuperComponentImpl() : super._$();

  @override
  _$GenericSuperPropsImpl typedPropsFactory(Map backingMap) => new _$GenericSuperPropsImpl(backingMap);

  /// Let [UiComponent] internals know that this class has been generated.
  @override
  bool get $isClassGenerated => true;

  /// The default consumed props, taken from GenericSuperProps.
  /// Used in [UiProps.consumedProps] if [consumedProps] is not overridden.
  @override
  final List<ConsumedProps> $defaultConsumedProps = const [_$GenericSuperPropsImpl.$consumedProps];
}
// React component factory implementation.
//
// Registers component implementation and links type meta to builder factory.
final $GenericSuperComponentFactory = registerComponent(() => new _$GenericSuperComponentImpl(),
    builderFactory: GenericSuper,
    componentClass: GenericSuperComponent,
    isWrapper: false,
    parentType: null,
    displayName: 'GenericSuper'
);
