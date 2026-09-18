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
import '../../features/todo/data/datasource/todo_datasource.dart' as _i1011;
import '../../features/todo/data/datasource/todo_remote_impl.dart' as _i634;
import '../../features/todo/data/repositories/todo_repository_impl.dart'
    as _i767;
import '../../features/todo/domain/repositories/todo_repository.dart' as _i136;
import '../../features/todo/domain/usecases/fetch_todo_by_id_usecase.dart'
    as _i376;
import '../../features/todo/domain/usecases/fetch_todos_usecase.dart' as _i883;
import '../../features/todo/presentation/view_model/todo/todo_view_model.dart'
    as _i237;
import '../../features/todo/presentation/view_model/todo_details/todo_details_view_model.dart'
    as _i949;
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
    gh.lazySingleton<_i1011.TodoDatasource>(
      () => _i634.TodoRemoteImpl(gh<_i1066.NetworkRequester>()),
    );
    gh.lazySingleton<_i136.TodoRepository>(
      () => _i767.TodoRepositoryImpl(gh<_i1011.TodoDatasource>()),
    );
    gh.factory<_i376.FetchTodoByIdUseCase>(
      () => _i376.FetchTodoByIdUseCase(gh<_i136.TodoRepository>()),
    );
    gh.factory<_i883.FetchTodosUseCase>(
      () => _i883.FetchTodosUseCase(gh<_i136.TodoRepository>()),
    );
    gh.factory<_i949.TodoDetailsViewModel>(
      () => _i949.TodoDetailsViewModel(gh<_i376.FetchTodoByIdUseCase>()),
    );
    gh.factory<_i237.TodoViewModel>(
      () => _i237.TodoViewModel(gh<_i883.FetchTodosUseCase>()),
    );
    return this;
  }
}

class _$AppRouteModule extends _i218.AppRouteModule {}
