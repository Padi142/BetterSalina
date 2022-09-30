// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stations_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<StationModel> stations) loadedStations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<StationModel> stations)? loadedStations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<StationModel> stations)? loadedStations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadedStations value) loadedStations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadedStations value)? loadedStations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadedStations value)? loadedStations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationsStateCopyWith<$Res> {
  factory $StationsStateCopyWith(
          StationsState value, $Res Function(StationsState) then) =
      _$StationsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StationsStateCopyWithImpl<$Res>
    implements $StationsStateCopyWith<$Res> {
  _$StationsStateCopyWithImpl(this._value, this._then);

  final StationsState _value;
  // ignore: unused_field
  final $Res Function(StationsState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$StationsStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'StationsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<StationModel> stations) loadedStations,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<StationModel> stations)? loadedStations,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<StationModel> stations)? loadedStations,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadedStations value) loadedStations,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadedStations value)? loadedStations,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadedStations value)? loadedStations,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements StationsState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadedStationsCopyWith<$Res> {
  factory _$$LoadedStationsCopyWith(
          _$LoadedStations value, $Res Function(_$LoadedStations) then) =
      __$$LoadedStationsCopyWithImpl<$Res>;
  $Res call({List<StationModel> stations});
}

/// @nodoc
class __$$LoadedStationsCopyWithImpl<$Res>
    extends _$StationsStateCopyWithImpl<$Res>
    implements _$$LoadedStationsCopyWith<$Res> {
  __$$LoadedStationsCopyWithImpl(
      _$LoadedStations _value, $Res Function(_$LoadedStations) _then)
      : super(_value, (v) => _then(v as _$LoadedStations));

  @override
  _$LoadedStations get _value => super._value as _$LoadedStations;

  @override
  $Res call({
    Object? stations = freezed,
  }) {
    return _then(_$LoadedStations(
      stations == freezed
          ? _value._stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<StationModel>,
    ));
  }
}

/// @nodoc

class _$LoadedStations implements LoadedStations {
  const _$LoadedStations(final List<StationModel> stations)
      : _stations = stations;

  final List<StationModel> _stations;
  @override
  List<StationModel> get stations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stations);
  }

  @override
  String toString() {
    return 'StationsState.loadedStations(stations: $stations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStations &&
            const DeepCollectionEquality().equals(other._stations, _stations));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stations));

  @JsonKey(ignore: true)
  @override
  _$$LoadedStationsCopyWith<_$LoadedStations> get copyWith =>
      __$$LoadedStationsCopyWithImpl<_$LoadedStations>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<StationModel> stations) loadedStations,
  }) {
    return loadedStations(stations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<StationModel> stations)? loadedStations,
  }) {
    return loadedStations?.call(stations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<StationModel> stations)? loadedStations,
    required TResult orElse(),
  }) {
    if (loadedStations != null) {
      return loadedStations(stations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadedStations value) loadedStations,
  }) {
    return loadedStations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadedStations value)? loadedStations,
  }) {
    return loadedStations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadedStations value)? loadedStations,
    required TResult orElse(),
  }) {
    if (loadedStations != null) {
      return loadedStations(this);
    }
    return orElse();
  }
}

abstract class LoadedStations implements StationsState {
  const factory LoadedStations(final List<StationModel> stations) =
      _$LoadedStations;

  List<StationModel> get stations;
  @JsonKey(ignore: true)
  _$$LoadedStationsCopyWith<_$LoadedStations> get copyWith =>
      throw _privateConstructorUsedError;
}
