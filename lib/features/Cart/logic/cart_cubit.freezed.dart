// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartState {
  int get itemCount => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<AddedToCardModel> get addedToCardItems =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call(
      {int itemCount, bool isLoading, List<AddedToCardModel> addedToCardItems});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemCount = null,
    Object? isLoading = null,
    Object? addedToCardItems = null,
  }) {
    return _then(_value.copyWith(
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      addedToCardItems: null == addedToCardItems
          ? _value.addedToCardItems
          : addedToCardItems // ignore: cast_nullable_to_non_nullable
              as List<AddedToCardModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int itemCount, bool isLoading, List<AddedToCardModel> addedToCardItems});
}

/// @nodoc
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemCount = null,
    Object? isLoading = null,
    Object? addedToCardItems = null,
  }) {
    return _then(_$CartStateImpl(
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      addedToCardItems: null == addedToCardItems
          ? _value._addedToCardItems
          : addedToCardItems // ignore: cast_nullable_to_non_nullable
              as List<AddedToCardModel>,
    ));
  }
}

/// @nodoc

class _$CartStateImpl extends _CartState {
  const _$CartStateImpl(
      {this.itemCount = 0,
      this.isLoading = false,
      final List<AddedToCardModel> addedToCardItems = const []})
      : _addedToCardItems = addedToCardItems,
        super._();

  @override
  @JsonKey()
  final int itemCount;
  @override
  @JsonKey()
  final bool isLoading;
  final List<AddedToCardModel> _addedToCardItems;
  @override
  @JsonKey()
  List<AddedToCardModel> get addedToCardItems {
    if (_addedToCardItems is EqualUnmodifiableListView)
      return _addedToCardItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addedToCardItems);
  }

  @override
  String toString() {
    return 'CartState(itemCount: $itemCount, isLoading: $isLoading, addedToCardItems: $addedToCardItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateImpl &&
            (identical(other.itemCount, itemCount) ||
                other.itemCount == itemCount) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._addedToCardItems, _addedToCardItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemCount, isLoading,
      const DeepCollectionEquality().hash(_addedToCardItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);
}

abstract class _CartState extends CartState {
  const factory _CartState(
      {final int itemCount,
      final bool isLoading,
      final List<AddedToCardModel> addedToCardItems}) = _$CartStateImpl;
  const _CartState._() : super._();

  @override
  int get itemCount;
  @override
  bool get isLoading;
  @override
  List<AddedToCardModel> get addedToCardItems;
  @override
  @JsonKey(ignore: true)
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
