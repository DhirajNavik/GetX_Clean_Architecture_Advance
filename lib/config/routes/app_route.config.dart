
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getxtest/config/routes/app_routes.dart';
import 'package:injectable/injectable.dart';


@module
abstract class AppRouteModule {
  @singleton
  List<GetPage> get pages => AppRoutes.routes;
}