// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/product/domain/repositories/product_repository.dart'
    as _i39;
import '../../features/product/presentation/bloc/product_bloc.dart' as _i415;
import '../network/api_client.dart' as _i557;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkModule = _$NetworkModule();
    gh.factory<_i415.ProductBloc>(() => _i415.ProductBloc());
    gh.singleton<_i361.Dio>(() => networkModule.dio);
    gh.factory<_i39.ProductRepository>(() => _i39.ProductRepositoryImpl());
    return this;
  }
}

class _$NetworkModule extends _i557.NetworkModule {}
