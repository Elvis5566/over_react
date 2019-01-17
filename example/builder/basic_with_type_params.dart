import 'package:over_react/over_react.dart';

part 'basic_with_type_params.over_react.g.dart';

@Factory()
UiFactory<BasicProps> Basic = _$Basic;

// ignore: mixin_of_non_class,undefined_class
class BasicProps<T, U extends UiProps> extends _$BasicProps<T, U> with _$BasicPropsAccessorsMixin<T, U> {
  // ignore: undefined_identifier, undefined_class, const_initialized_with_non_constant_value
  static const PropsMeta meta = _$metaForBasicProps;
}

@Props()
//// ignore: mixin_of_non_class,undefined_class
class _$BasicProps<T, U extends UiProps> extends UiProps {
  List<T> someGenericListProp;
  U somePropsClass;
}

@Component()
class BasicComponent extends UiComponent<BasicProps> {
  getDefaultProps() => newProps()..id = 'basic component';

  @override
  render() {
    return Dom.div()(
        Dom.div()('prop id: ${props.id}'),
    );
  }
}


