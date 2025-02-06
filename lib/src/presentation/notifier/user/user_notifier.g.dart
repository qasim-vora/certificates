// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userNotifierHash() => r'ba7cadf6a36a54f42cdfb5cb8887308ddb6956fa';

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

abstract class _$UserNotifier extends BuildlessAutoDisposeNotifier<UserState> {
  late final String user;

  UserState build(
    String user,
  );
}

/// See also [UserNotifier].
@ProviderFor(UserNotifier)
const userNotifierProvider = UserNotifierFamily();

/// See also [UserNotifier].
class UserNotifierFamily extends Family<UserState> {
  /// See also [UserNotifier].
  const UserNotifierFamily();

  /// See also [UserNotifier].
  UserNotifierProvider call(
    String user,
  ) {
    return UserNotifierProvider(
      user,
    );
  }

  @override
  UserNotifierProvider getProviderOverride(
    covariant UserNotifierProvider provider,
  ) {
    return call(
      provider.user,
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
  String? get name => r'userNotifierProvider';
}

/// See also [UserNotifier].
class UserNotifierProvider
    extends AutoDisposeNotifierProviderImpl<UserNotifier, UserState> {
  /// See also [UserNotifier].
  UserNotifierProvider(
    String user,
  ) : this._internal(
          () => UserNotifier()..user = user,
          from: userNotifierProvider,
          name: r'userNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userNotifierHash,
          dependencies: UserNotifierFamily._dependencies,
          allTransitiveDependencies:
              UserNotifierFamily._allTransitiveDependencies,
          user: user,
        );

  UserNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.user,
  }) : super.internal();

  final String user;

  @override
  UserState runNotifierBuild(
    covariant UserNotifier notifier,
  ) {
    return notifier.build(
      user,
    );
  }

  @override
  Override overrideWith(UserNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserNotifierProvider._internal(
        () => create()..user = user,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        user: user,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<UserNotifier, UserState> createElement() {
    return _UserNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserNotifierProvider && other.user == user;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, user.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UserNotifierRef on AutoDisposeNotifierProviderRef<UserState> {
  /// The parameter `user` of this provider.
  String get user;
}

class _UserNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<UserNotifier, UserState>
    with UserNotifierRef {
  _UserNotifierProviderElement(super.provider);

  @override
  String get user => (origin as UserNotifierProvider).user;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
