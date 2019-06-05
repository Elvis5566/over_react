// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress.dart';

// **************************************************************************
// OverReactBuilder (package:over_react/src/builder.dart)
// **************************************************************************

// React component factory implementation.
//
// Registers component implementation and links type meta to builder factory.
final $ProgressComponentFactory = registerComponent2(
  () => new _$ProgressComponent(),
  builderFactory: Progress,
  componentClass: ProgressComponent,
  isWrapper: false,
  parentType: null,
  displayName: 'Progress',
);

abstract class _$ProgressPropsAccessorsMixin implements _$ProgressProps {
  @override
  Map get props;

  /// The current value of the [Progress] component.
  ///
  /// This value should be between the [min] and [max] values.
  ///
  /// Default: `0.0`
  ///
  /// <!-- Generated from [_$ProgressProps.value] -->
  @override
  double get value =>
      props[_$key__value___$ProgressProps] ??
      null; // Add ` ?? null` to workaround DDC bug: <https://github.com/dart-lang/sdk/issues/36052>;
  /// The current value of the [Progress] component.
  ///
  /// This value should be between the [min] and [max] values.
  ///
  /// Default: `0.0`
  ///
  /// <!-- Generated from [_$ProgressProps.value] -->
  @override
  set value(double value) => props[_$key__value___$ProgressProps] = value;

  /// The min value of the [Progress] component.
  ///
  /// Default: `0.0`
  ///
  /// <!-- Generated from [_$ProgressProps.min] -->
  @override
  double get min =>
      props[_$key__min___$ProgressProps] ??
      null; // Add ` ?? null` to workaround DDC bug: <https://github.com/dart-lang/sdk/issues/36052>;
  /// The min value of the [Progress] component.
  ///
  /// Default: `0.0`
  ///
  /// <!-- Generated from [_$ProgressProps.min] -->
  @override
  set min(double value) => props[_$key__min___$ProgressProps] = value;

  /// The max value of the [Progress] component.
  ///
  /// Default: `100.0`
  ///
  /// <!-- Generated from [_$ProgressProps.max] -->
  @override
  double get max =>
      props[_$key__max___$ProgressProps] ??
      null; // Add ` ?? null` to workaround DDC bug: <https://github.com/dart-lang/sdk/issues/36052>;
  /// The max value of the [Progress] component.
  ///
  /// Default: `100.0`
  ///
  /// <!-- Generated from [_$ProgressProps.max] -->
  @override
  set max(double value) => props[_$key__max___$ProgressProps] = value;

  /// The skin / "context" for the [Progress] component.
  ///
  /// See: <http://v4-alpha.getbootstrap.com/components/progress/#contextual-alternatives>.
  ///
  /// Default: [ProgressSkin.DEFAULT]
  ///
  /// <!-- Generated from [_$ProgressProps.skin] -->
  @override
  ProgressSkin get skin =>
      props[_$key__skin___$ProgressProps] ??
      null; // Add ` ?? null` to workaround DDC bug: <https://github.com/dart-lang/sdk/issues/36052>;
  /// The skin / "context" for the [Progress] component.
  ///
  /// See: <http://v4-alpha.getbootstrap.com/components/progress/#contextual-alternatives>.
  ///
  /// Default: [ProgressSkin.DEFAULT]
  ///
  /// <!-- Generated from [_$ProgressProps.skin] -->
  @override
  set skin(ProgressSkin value) => props[_$key__skin___$ProgressProps] = value;

  /// Whether to render a "Barber Pole" gradient stripe effect in the [Progress] component.
  ///
  /// Default: false
  ///
  /// <!-- Generated from [_$ProgressProps.isStriped] -->
  @override
  bool get isStriped =>
      props[_$key__isStriped___$ProgressProps] ??
      null; // Add ` ?? null` to workaround DDC bug: <https://github.com/dart-lang/sdk/issues/36052>;
  /// Whether to render a "Barber Pole" gradient stripe effect in the [Progress] component.
  ///
  /// Default: false
  ///
  /// <!-- Generated from [_$ProgressProps.isStriped] -->
  @override
  set isStriped(bool value) => props[_$key__isStriped___$ProgressProps] = value;

  /// Whether to animate the "Barber Pole" gradient stripe effect in the [Progress] component.
  ///
  /// __Note:__ Has no effect if [isStriped] is `false`.
  ///
  /// Default: false
  ///
  /// <!-- Generated from [_$ProgressProps.isAnimated] -->
  @override
  bool get isAnimated =>
      props[_$key__isAnimated___$ProgressProps] ??
      null; // Add ` ?? null` to workaround DDC bug: <https://github.com/dart-lang/sdk/issues/36052>;
  /// Whether to animate the "Barber Pole" gradient stripe effect in the [Progress] component.
  ///
  /// __Note:__ Has no effect if [isStriped] is `false`.
  ///
  /// Default: false
  ///
  /// <!-- Generated from [_$ProgressProps.isAnimated] -->
  @override
  set isAnimated(bool value) =>
      props[_$key__isAnimated___$ProgressProps] = value;

  /// Optionally add a caption that describes the context of the [Progress] component.
  ///
  /// See: <http://v4-alpha.getbootstrap.com/components/progress/#example>.
  ///
  /// Default: [ProgressComponent._getPercentComplete]%
  ///
  /// <!-- Generated from [_$ProgressProps.caption] -->
  @override
  String get caption =>
      props[_$key__caption___$ProgressProps] ??
      null; // Add ` ?? null` to workaround DDC bug: <https://github.com/dart-lang/sdk/issues/36052>;
  /// Optionally add a caption that describes the context of the [Progress] component.
  ///
  /// See: <http://v4-alpha.getbootstrap.com/components/progress/#example>.
  ///
  /// Default: [ProgressComponent._getPercentComplete]%
  ///
  /// <!-- Generated from [_$ProgressProps.caption] -->
  @override
  set caption(String value) => props[_$key__caption___$ProgressProps] = value;

  /// Additional props to be added to the [caption] element _(if specified)_.
  ///
  /// <!-- Generated from [_$ProgressProps.captionProps] -->
  @override
  Map get captionProps =>
      props[_$key__captionProps___$ProgressProps] ??
      null; // Add ` ?? null` to workaround DDC bug: <https://github.com/dart-lang/sdk/issues/36052>;
  /// Additional props to be added to the [caption] element _(if specified)_.
  ///
  /// <!-- Generated from [_$ProgressProps.captionProps] -->
  @override
  set captionProps(Map value) =>
      props[_$key__captionProps___$ProgressProps] = value;

  /// Whether the [caption] should be visible.
  ///
  /// Default: false
  ///
  /// <!-- Generated from [_$ProgressProps.showCaption] -->
  @override
  bool get showCaption =>
      props[_$key__showCaption___$ProgressProps] ??
      null; // Add ` ?? null` to workaround DDC bug: <https://github.com/dart-lang/sdk/issues/36052>;
  /// Whether the [caption] should be visible.
  ///
  /// Default: false
  ///
  /// <!-- Generated from [_$ProgressProps.showCaption] -->
  @override
  set showCaption(bool value) =>
      props[_$key__showCaption___$ProgressProps] = value;

  /// Whether the [caption] should be appended with the value of [value].
  ///
  /// Default: true
  ///
  /// <!-- Generated from [_$ProgressProps.showPercentComplete] -->
  @override
  bool get showPercentComplete =>
      props[_$key__showPercentComplete___$ProgressProps] ??
      null; // Add ` ?? null` to workaround DDC bug: <https://github.com/dart-lang/sdk/issues/36052>;
  /// Whether the [caption] should be appended with the value of [value].
  ///
  /// Default: true
  ///
  /// <!-- Generated from [_$ProgressProps.showPercentComplete] -->
  @override
  set showPercentComplete(bool value) =>
      props[_$key__showPercentComplete___$ProgressProps] = value;

  /// Additional props to be added to the [Dom.div] that wraps around the [caption] element and `<progress>` element.
  ///
  /// <!-- Generated from [_$ProgressProps.rootNodeProps] -->
  @override
  Map get rootNodeProps =>
      props[_$key__rootNodeProps___$ProgressProps] ??
      null; // Add ` ?? null` to workaround DDC bug: <https://github.com/dart-lang/sdk/issues/36052>;
  /// Additional props to be added to the [Dom.div] that wraps around the [caption] element and `<progress>` element.
  ///
  /// <!-- Generated from [_$ProgressProps.rootNodeProps] -->
  @override
  set rootNodeProps(Map value) =>
      props[_$key__rootNodeProps___$ProgressProps] = value;
  /* GENERATED CONSTANTS */
  static const PropDescriptor _$prop__value___$ProgressProps =
      const PropDescriptor(_$key__value___$ProgressProps);
  static const PropDescriptor _$prop__min___$ProgressProps =
      const PropDescriptor(_$key__min___$ProgressProps);
  static const PropDescriptor _$prop__max___$ProgressProps =
      const PropDescriptor(_$key__max___$ProgressProps);
  static const PropDescriptor _$prop__skin___$ProgressProps =
      const PropDescriptor(_$key__skin___$ProgressProps);
  static const PropDescriptor _$prop__isStriped___$ProgressProps =
      const PropDescriptor(_$key__isStriped___$ProgressProps);
  static const PropDescriptor _$prop__isAnimated___$ProgressProps =
      const PropDescriptor(_$key__isAnimated___$ProgressProps);
  static const PropDescriptor _$prop__caption___$ProgressProps =
      const PropDescriptor(_$key__caption___$ProgressProps);
  static const PropDescriptor _$prop__captionProps___$ProgressProps =
      const PropDescriptor(_$key__captionProps___$ProgressProps);
  static const PropDescriptor _$prop__showCaption___$ProgressProps =
      const PropDescriptor(_$key__showCaption___$ProgressProps);
  static const PropDescriptor _$prop__showPercentComplete___$ProgressProps =
      const PropDescriptor(_$key__showPercentComplete___$ProgressProps);
  static const PropDescriptor _$prop__rootNodeProps___$ProgressProps =
      const PropDescriptor(_$key__rootNodeProps___$ProgressProps);
  static const String _$key__value___$ProgressProps = 'ProgressProps.value';
  static const String _$key__min___$ProgressProps = 'ProgressProps.min';
  static const String _$key__max___$ProgressProps = 'ProgressProps.max';
  static const String _$key__skin___$ProgressProps = 'ProgressProps.skin';
  static const String _$key__isStriped___$ProgressProps =
      'ProgressProps.isStriped';
  static const String _$key__isAnimated___$ProgressProps =
      'ProgressProps.isAnimated';
  static const String _$key__caption___$ProgressProps = 'ProgressProps.caption';
  static const String _$key__captionProps___$ProgressProps =
      'ProgressProps.captionProps';
  static const String _$key__showCaption___$ProgressProps =
      'ProgressProps.showCaption';
  static const String _$key__showPercentComplete___$ProgressProps =
      'ProgressProps.showPercentComplete';
  static const String _$key__rootNodeProps___$ProgressProps =
      'ProgressProps.rootNodeProps';

  static const List<PropDescriptor> $props = const [
    _$prop__value___$ProgressProps,
    _$prop__min___$ProgressProps,
    _$prop__max___$ProgressProps,
    _$prop__skin___$ProgressProps,
    _$prop__isStriped___$ProgressProps,
    _$prop__isAnimated___$ProgressProps,
    _$prop__caption___$ProgressProps,
    _$prop__captionProps___$ProgressProps,
    _$prop__showCaption___$ProgressProps,
    _$prop__showPercentComplete___$ProgressProps,
    _$prop__rootNodeProps___$ProgressProps
  ];
  static const List<String> $propKeys = const [
    _$key__value___$ProgressProps,
    _$key__min___$ProgressProps,
    _$key__max___$ProgressProps,
    _$key__skin___$ProgressProps,
    _$key__isStriped___$ProgressProps,
    _$key__isAnimated___$ProgressProps,
    _$key__caption___$ProgressProps,
    _$key__captionProps___$ProgressProps,
    _$key__showCaption___$ProgressProps,
    _$key__showPercentComplete___$ProgressProps,
    _$key__rootNodeProps___$ProgressProps
  ];
}

const PropsMeta _$metaForProgressProps = const PropsMeta(
  fields: _$ProgressPropsAccessorsMixin.$props,
  keys: _$ProgressPropsAccessorsMixin.$propKeys,
);

class ProgressProps extends _$ProgressProps with _$ProgressPropsAccessorsMixin {
  static const PropsMeta meta = _$metaForProgressProps;
}

_$$ProgressProps _$Progress([Map backingProps]) => backingProps == null
    ? new _$$ProgressProps$JsMap(new JsBackedMap())
    : new _$$ProgressProps(backingProps);

// Concrete props implementation.
//
// Implements constructor and backing map, and links up to generated component factory.
abstract class _$$ProgressProps extends _$ProgressProps
    with _$ProgressPropsAccessorsMixin
    implements ProgressProps {
  _$$ProgressProps._();

  factory _$$ProgressProps(Map backingMap) {
    if (backingMap is JsBackedMap) {
      return new _$$ProgressProps$JsMap(backingMap);
    } else {
      return new _$$ProgressProps$PlainMap(backingMap);
    }
  }

  /// Let [UiProps] internals know that this class has been generated.
  @override
  bool get $isClassGenerated => true;

  /// The [ReactComponentFactory] associated with the component built by this class.
  var _factoryOverride;
  @override
  ReactComponentFactoryProxy get componentFactory =>
      _factoryOverride ?? $ProgressComponentFactory;
  @override
  set componentFactory(ReactComponentFactoryProxy v) => _factoryOverride = v;

  /// The default namespace for the prop getters/setters generated for this class.
  @override
  String get propKeyNamespace => 'ProgressProps.';
}

// Concrete props implementation that can be backed by any [Map].
class _$$ProgressProps$PlainMap extends _$$ProgressProps {
  // This initializer of `_props` to an empty map, as well as the reassignment
  // of `_props` in the constructor body is necessary to work around a DDC bug: https://github.com/dart-lang/sdk/issues/36217
  _$$ProgressProps$PlainMap(Map backingMap)
      : this._props = {},
        super._() {
    this._props = backingMap ?? {};
  }

  /// The backing props map proxied by this class.
  @override
  Map get props => _props;
  Map _props;
}

// Concrete props implementation that can only be backed by [JsMap],
// allowing dart2js to compile more optimal code for key-value pair reads/writes.
class _$$ProgressProps$JsMap extends _$$ProgressProps {
  // This initializer of `_props` to an empty map, as well as the reassignment
  // of `_props` in the constructor body is necessary to work around a DDC bug: https://github.com/dart-lang/sdk/issues/36217
  _$$ProgressProps$JsMap(JsBackedMap backingMap)
      : this._props = new JsBackedMap(),
        super._() {
    this._props = backingMap ?? new JsBackedMap();
  }

  /// The backing props map proxied by this class.
  @override
  JsBackedMap get props => _props;
  JsBackedMap _props;
}

abstract class _$ProgressStateAccessorsMixin implements _$ProgressState {
  @override
  Map get state;

  /// An autogenerated GUID, used as a fallback when [ProgressProps.id] is unspecified, and
  /// saved on the state so it will persist across remounts.
  ///
  /// HTML id attributes are needed on `<progress>` elements for proper accessibility support,
  /// so this state value ensures there's always a valid ID value to use.
  ///
  /// <!-- Generated from [_$ProgressState.id] -->
  @override
  String get id =>
      state[_$key__id___$ProgressState] ??
      null; // Add ` ?? null` to workaround DDC bug: <https://github.com/dart-lang/sdk/issues/36052>;
  /// An autogenerated GUID, used as a fallback when [ProgressProps.id] is unspecified, and
  /// saved on the state so it will persist across remounts.
  ///
  /// HTML id attributes are needed on `<progress>` elements for proper accessibility support,
  /// so this state value ensures there's always a valid ID value to use.
  ///
  /// <!-- Generated from [_$ProgressState.id] -->
  @override
  set id(String value) => state[_$key__id___$ProgressState] = value;
  /* GENERATED CONSTANTS */
  static const StateDescriptor _$prop__id___$ProgressState =
      const StateDescriptor(_$key__id___$ProgressState);
  static const String _$key__id___$ProgressState = 'ProgressState.id';

  static const List<StateDescriptor> $state = const [
    _$prop__id___$ProgressState
  ];
  static const List<String> $stateKeys = const [_$key__id___$ProgressState];
}

const StateMeta _$metaForProgressState = const StateMeta(
  fields: _$ProgressStateAccessorsMixin.$state,
  keys: _$ProgressStateAccessorsMixin.$stateKeys,
);

class ProgressState extends _$ProgressState with _$ProgressStateAccessorsMixin {
  static const StateMeta meta = _$metaForProgressState;
}

// Concrete state implementation.
//
// Implements constructor and backing map.
abstract class _$$ProgressState extends _$ProgressState
    with _$ProgressStateAccessorsMixin
    implements ProgressState {
  _$$ProgressState._();

  factory _$$ProgressState(Map backingMap) {
    if (backingMap is JsBackedMap) {
      return new _$$ProgressState$JsMap(backingMap);
    } else {
      return new _$$ProgressState$PlainMap(backingMap);
    }
  }

  /// Let [UiState] internals know that this class has been generated.
  @override
  bool get $isClassGenerated => true;
}

// Concrete state implementation that can be backed by any [Map].
class _$$ProgressState$PlainMap extends _$$ProgressState {
  // This initializer of `_state` to an empty map, as well as the reassignment
  // of `_state` in the constructor body is necessary to work around a DDC bug: https://github.com/dart-lang/sdk/issues/36217
  _$$ProgressState$PlainMap(Map backingMap)
      : this._state = {},
        super._() {
    this._state = backingMap ?? {};
  }

  /// The backing state map proxied by this class.
  @override
  Map get state => _state;
  Map _state;
}

// Concrete state implementation that can only be backed by [JsMap],
// allowing dart2js to compile more optimal code for key-value pair reads/writes.
class _$$ProgressState$JsMap extends _$$ProgressState {
  // This initializer of `_state` to an empty map, as well as the reassignment
  // of `_state` in the constructor body is necessary to work around a DDC bug: https://github.com/dart-lang/sdk/issues/36217
  _$$ProgressState$JsMap(JsBackedMap backingMap)
      : this._state = new JsBackedMap(),
        super._() {
    this._state = backingMap ?? new JsBackedMap();
  }

  /// The backing state map proxied by this class.
  @override
  JsBackedMap get state => _state;
  JsBackedMap _state;
}

// Concrete component implementation mixin.
//
// Implements typed props/state factories, defaults `consumedPropKeys` to the keys
// generated for the associated props class.
class _$ProgressComponent extends ProgressComponent {
  _$$ProgressProps$JsMap _cachedTypedProps;

  @override
  _$$ProgressProps$JsMap get props => _cachedTypedProps;

  @override
  set props(Map value) {
    super.props = value;
    _cachedTypedProps = typedPropsFactoryJs(value);
  }

  @override
  _$$ProgressProps$JsMap typedPropsFactoryJs(JsBackedMap backingMap) =>
      new _$$ProgressProps$JsMap(backingMap);

  @override
  _$$ProgressProps typedPropsFactory(Map backingMap) =>
      new _$$ProgressProps(backingMap);

  _$$ProgressState$JsMap _cachedTypedState;
  @override
  _$$ProgressState$JsMap get state => _cachedTypedState;

  @override
  set state(Map value) {
    assert(
        value is JsBackedMap,
        'Component2.state should only be set via '
        'initializeState (within the init lifecycle method) or setState.');
    super.state = value;
    _cachedTypedState = typedStateFactoryJs(value);
  }

  @override
  _$$ProgressState$JsMap typedStateFactoryJs(JsBackedMap backingMap) =>
      new _$$ProgressState$JsMap(backingMap);

  @override
  _$$ProgressState typedStateFactory(Map backingMap) =>
      new _$$ProgressState(backingMap);

  /// Let [UiComponent] internals know that this class has been generated.
  @override
  bool get $isClassGenerated => true;

  /// The default consumed props, taken from _$ProgressProps.
  /// Used in [UiProps.consumedProps] if [consumedProps] is not overridden.
  @override
  final List<ConsumedProps> $defaultConsumedProps = const [
    _$metaForProgressProps
  ];
}