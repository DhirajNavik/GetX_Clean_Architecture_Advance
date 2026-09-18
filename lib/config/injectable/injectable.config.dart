// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:get/get_navigation/src/routes/get_route.dart' as _i101;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../core/dio/network_requester.dart' as _i1066;
import '../../features/testing/data/datasource/todo_datasource.dart' as _i814;
import '../../features/testing/data/datasource/todo_remote_impl.dart' as _i887;
import '../../features/testing/data/repositories/todo_repository_impl.dart'
    as _i742;
import '../../features/testing/domain/repositories/todo_repository.dart'
    as _i185;
import '../../features/testing/domain/usecases/fetch_todos_usecase.dart'
    as _i999;
import '../../features/testing/presentation/view_model/todo_view_model.dart'
    as _i705;
import '../routes/app_route.config.dart' as _i218;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appRouteModule = _$AppRouteModule();
    gh.singleton<List<_i101.GetPage<dynamic>>>(() => appRouteModule.pages);
    gh.singleton<_i1066.NetworkRequester>(() => _i1066.NetworkRequester());
    gh.lazySingleton<_i814.TodoDatasource>(
      () => _i887.TodoRemoteImpl(gh<_i1066.NetworkRequester>()),
    );
    gh.lazySingleton<_i185.TodoRepository>(
      () => _i742.TodoRepositoryImpl(gh<_i814.TodoDatasource>()),
    );
    gh.lazySingleton<_i999.FetchTodosUsecase>(
      () => _i999.FetchTodosUsecase(gh<_i185.TodoRepository>()),
    );
    gh.factory<_i705.TodoViewModel>(
      () => _i705.TodoViewModel(gh<_i999.FetchTodosUsecase>()),
    );
    return this;
  }
}

class _$AppRouteModule extends _i218.AppRouteModule {}
