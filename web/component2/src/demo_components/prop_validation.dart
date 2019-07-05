import 'package:over_react/over_react.dart';

part 'prop_validation.over_react.g.dart';

@Factory()
UiFactory<PropTypesProps> PropTypes = _$PropTypes;

@Props()
class _$PropTypesProps extends UiProps {
  int count;
  List twoObjects;
  int defaultCount;
  bool content;

  bool hideHeader;
  dynamic header;

  List initiallyExpandedKeys;
  var targetKey;

  bool hideLabel;
  String label;
}

@Component2()
class PropTypesComponent extends UiComponent2<PropTypesProps> {
  @override
  render() => Fragment()(Dom.code()('props.twoObjects'), ' currently has ${props.twoObjects.length} objects passed to it.');

  // One variation of what the API could look like.
  //
  // This is closer to what it looks like in JS, but might be confusing syntax.
  @override
  get propTypes => {
    propKey((props) => props.twoObjects): (PropTypesProps props, String propName, String componentName, String location, String propFullName) {
      final length = props.twoObjects?.length;
      if (length != 2) {
        throw new PropError.value(length, propName, 'must have a length of 2');
      }
    },
  };

}