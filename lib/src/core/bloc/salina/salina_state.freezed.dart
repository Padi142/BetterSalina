// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'salina_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SalinaState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Salina> lines) loadedTables,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Salina> lines)? loadedTables,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Salina> lines)? loadedTables,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadedLines value) loadedTables,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadedLines value)? loadedTables,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadedLines value)? loadedTables,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalinaStateCopyWith<$Res> {
  factory $SalinaStateCopyWith(
          SalinaState value, $Res Function(SalinaState) then) =
      _$SalinaStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SalinaStateCopyWithImpl<$Res> implements $SalinaStateCopyWith<$Res> {
  _$SalinaStateCopyWithImpl(this._value, this._then);

  final SalinaState _value;
  // ignore: unused_field
  final $Res Function(SalinaState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$SalinaStateCopyWithImpl<$Res>
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
    return 'SalinaState.initial()';
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
    required TResult Function(List<Salina> lines) loadedTables,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Salina> lines)? loadedTables,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Salina> lines)? loadedTables,
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
    required TResult Function(LoadedLines value) loadedTables,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadedLines value)? loadedTables,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadedLines value)? loadedTables,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SalinaState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadedLinesCopyWith<$Res> {
  factory _$$LoadedLinesCopyWith(
          _$LoadedLines value, $Res Function(_$LoadedLines) then) =
      __$$LoadedLinesCopyWithImpl<$Res>;
  $Res call({List<Salina> lines});
}

/// @nodoc
class __$$LoadedLinesCopyWithImpl<$Res> extends _$SalinaStateCopyWithImpl<$Res>
    implements _$$LoadedLinesCopyWith<$Res> {
  __$$LoadedLinesCopyWithImpl(
      _$LoadedLines _value, $Res Function(_$LoadedLines) _then)
      : super(_value, (v) => _then(v as _$LoadedLines));

  @override
  _$LoadedLines get _value => super._value as _$LoadedLines;

  @override
  $Res call({
    Object? lines = freezed,
  }) {
    return _then(_$LoadedLines(
      lines == freezed
          ? _value._lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<Salina>,
    ));
  }
}

/// @nodoc

class _$LoadedLines implements LoadedLines {
  const _$LoadedLines(final List<Salina> lines) : _lines = lines;

  final List<Salina> _lines;
  @override
  List<Salina> get lines {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lines);
  }

  @override
  String toString() {
    return 'SalinaState.loadedTables(lines: $lines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedLines &&
            const DeepCollectionEquality().equals(other._lines, _lines));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_lines));

  @JsonKey(ignore: true)
  @override
  _$$LoadedLinesCopyWith<_$LoadedLines> get copyWith =>
      __$$LoadedLinesCopyWithImpl<_$LoadedLines>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Salina> lines) loadedTables,
  }) {
    return loadedTables(lines);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Salina> lines)? loadedTables,
  }) {
    return loadedTables?.call(lines);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Salina> lines)? loadedTables,
    required TResult orElse(),
  }) {
    if (loadedTables != null) {
      return loadedTables(lines);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadedLines value) loadedTables,
  }) {
    return loadedTables(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadedLines value)? loadedTables,
  }) {
    return loadedTables?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadedLines value)? loadedTables,
    required TResult orElse(),
  }) {
    if (loadedTables != null) {
      return loadedTables(this);
    }
    return orElse();
  }
}

abstract class LoadedLines implements SalinaState {
  const factory LoadedLines(final List<Salina> lines) = _$LoadedLines;

  List<Salina> get lines;
  @JsonKey(ignore: true)
  _$$LoadedLinesCopyWith<_$LoadedLines> get copyWith =>
      throw _privateConstructorUsedError;
}
