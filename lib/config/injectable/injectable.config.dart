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
import '../../features/todo/data/datasource/todo_datasource.dart' as _i814;
import '../../features/todo/data/datasource/todo_remote_impl.dart' as _i887;
import '../../features/todo/data/repositories/todo_repository_impl.dart'
    as _i742;
import '../../features/todo/domain/repositories/todo_repository.dart'
    as _i185;
import '../../features/todo/domain/usecases/fetch_todo_by_id_usecase.dart'
    as _i933;
import '../../features/todo/domain/usecases/fetch_todos_usecase.dart'
    as _i999;
import '../../features/todo/presentation/view_model/todo/todo_view_model.dart'
    as _i640;
import '../../features/todo/presentation/view_model/todo_details/todo_details_view_model.dart'
    as _i939;
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
    gh.factory<_i933.FetchTodoByIdUseCase>(
      () => _i933.FetchTodoByIdUseCase(gh<_i185.TodoRepository>()),
    );
    gh.factory<_i999.FetchTodosUseCase>(
      () => _i999.FetchTodosUseCase(gh<_i185.TodoRepository>()),
    );
    gh.factory<_i939.TodoDetailsViewModel>(
      () => _i939.TodoDetailsViewModel(gh<_i933.FetchTodoByIdUseCase>()),
    );
    gh.factory<_i640.TodoViewModel>(
      () => _i640.TodoViewModel(gh<_i999.FetchTodosUseCase>()),
    );
    return this;
  }
}

class _$AppRouteModule extends _i218.AppRouteModule {}
