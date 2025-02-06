// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_widget_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postWidgetNotifierHash() =>
    r'f65cee50745e7b6b5c39a9d74485a4e80554aa51';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$PostWidgetNotifier
    extends BuildlessAutoDisposeNotifier<PostWidgetState> {
  late final PostModel? postModel;

  PostWidgetState build([
    PostModel? postModel,
  ]);
}

/// See also [PostWidgetNotifier].
@ProviderFor(PostWidgetNotifier)
const postWidgetNotifierProvider = PostWidgetNotifierFamily();

/// See also [PostWidgetNotifier].
class PostWidgetNotifierFamily extends Family<PostWidgetState> {
  /// See also [PostWidgetNotifier].
  const PostWidgetNotifierFamily();

  /// See also [PostWidgetNotifier].
  PostWidgetNotifierProvider call([
    PostModel? postModel,
  ]) {
    return PostWidgetNotifierProvider(
      postModel,
    );
  }

  @override
  PostWidgetNotifierProvider getProviderOverride(
    covariant PostWidgetNotifierProvider provider,
  ) {
    return call(
      provider.postModel,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'postWidgetNotifierProvider';
}

/// See also [PostWidgetNotifier].
class PostWidgetNotifierProvider extends AutoDisposeNotifierProviderImpl<
    PostWidgetNotifier, PostWidgetState> {
  /// See also [PostWidgetNotifier].
  PostWidgetNotifierProvider([
    PostModel? postModel,
  ]) : this._internal(
          () => PostWidgetNotifier()..postModel = postModel,
          from: postWidgetNotifierProvider,
          name: r'postWidgetNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postWidgetNotifierHash,
          dependencies: PostWidgetNotifierFamily._dependencies,
          allTransitiveDependencies:
              PostWidgetNotifierFamily._allTransitiveDependencies,
          postModel: postModel,
        );

  PostWidgetNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.postModel,
  }) : super.internal();

  final PostModel? postModel;

  @override
  PostWidgetState runNotifierBuild(
    covariant PostWidgetNotifier notifier,
  ) {
    return notifier.build(
      postModel,
    );
  }

  @override
  Override overrideWith(PostWidgetNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: PostWidgetNotifierProvider._internal(
        () => create()..postModel = postModel,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        postModel: postModel,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<PostWidgetNotifier, PostWidgetState>
      createElement() {
    return _PostWidgetNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostWidgetNotifierProvider && other.postModel == postModel;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postModel.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PostWidgetNotifierRef on AutoDisposeNotifierProviderRef<PostWidgetState> {
  /// The parameter `postModel` of this provider.
  PostModel? get postModel;
}

class _PostWidgetNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<PostWidgetNotifier,
        PostWidgetState> with PostWidgetNotifierRef {
  _PostWidgetNotifierProviderElement(super.provider);

  @override
  PostModel? get postModel => (origin as PostWidgetNotifierProvider).postModel;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
