// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staggered_store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StaggeredState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get imageTitle => throw _privateConstructorUsedError;
  String get imageDetail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StaggeredStateCopyWith<StaggeredState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaggeredStateCopyWith<$Res> {
  factory $StaggeredStateCopyWith(
          StaggeredState value, $Res Function(StaggeredState) then) =
      _$StaggeredStateCopyWithImpl<$Res, StaggeredState>;
  @useResult
  $Res call(
      {bool isLoading,
      String title,
      String image,
      String imageTitle,
      String imageDetail});
}

/// @nodoc
class _$StaggeredStateCopyWithImpl<$Res, $Val extends StaggeredState>
    implements $StaggeredStateCopyWith<$Res> {
  _$StaggeredStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? title = null,
    Object? image = null,
    Object? imageTitle = null,
    Object? imageDetail = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      imageTitle: null == imageTitle
          ? _value.imageTitle
          : imageTitle // ignore: cast_nullable_to_non_nullable
              as String,
      imageDetail: null == imageDetail
          ? _value.imageDetail
          : imageDetail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StaggeredStateImplCopyWith<$Res>
    implements $StaggeredStateCopyWith<$Res> {
  factory _$$StaggeredStateImplCopyWith(_$StaggeredStateImpl value,
          $Res Function(_$StaggeredStateImpl) then) =
      __$$StaggeredStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String title,
      String image,
      String imageTitle,
      String imageDetail});
}

/// @nodoc
class __$$StaggeredStateImplCopyWithImpl<$Res>
    extends _$StaggeredStateCopyWithImpl<$Res, _$StaggeredStateImpl>
    implements _$$StaggeredStateImplCopyWith<$Res> {
  __$$StaggeredStateImplCopyWithImpl(
      _$StaggeredStateImpl _value, $Res Function(_$StaggeredStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? title = null,
    Object? image = null,
    Object? imageTitle = null,
    Object? imageDetail = null,
  }) {
    return _then(_$StaggeredStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      imageTitle: null == imageTitle
          ? _value.imageTitle
          : imageTitle // ignore: cast_nullable_to_non_nullable
              as String,
      imageDetail: null == imageDetail
          ? _value.imageDetail
          : imageDetail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StaggeredStateImpl implements _StaggeredState {
  const _$StaggeredStateImpl(
      {this.isLoading = false,
      this.title = "",
      this.image = "",
      this.imageTitle = "",
      this.imageDetail = ""});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String imageTitle;
  @override
  @JsonKey()
  final String imageDetail;

  @override
  String toString() {
    return 'StaggeredState(isLoading: $isLoading, title: $title, image: $image, imageTitle: $imageTitle, imageDetail: $imageDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaggeredStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.imageTitle, imageTitle) ||
                other.imageTitle == imageTitle) &&
            (identical(other.imageDetail, imageDetail) ||
                other.imageDetail == imageDetail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, title, image, imageTitle, imageDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StaggeredStateImplCopyWith<_$StaggeredStateImpl> get copyWith =>
      __$$StaggeredStateImplCopyWithImpl<_$StaggeredStateImpl>(
          this, _$identity);
}

abstract class _StaggeredState implements StaggeredState {
  const factory _StaggeredState(
      {final bool isLoading,
      final String title,
      final String image,
      final String imageTitle,
      final String imageDetail}) = _$StaggeredStateImpl;

  @override
  bool get isLoading;
  @override
  String get title;
  @override
  String get image;
  @override
  String get imageTitle;
  @override
  String get imageDetail;
  @override
  @JsonKey(ignore: true)
  _$$StaggeredStateImplCopyWith<_$StaggeredStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
