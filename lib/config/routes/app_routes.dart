import 'package:get/get.dart';
import 'package:getxtest/config/routes/routes_path.dart';
import 'package:getxtest/features/testing/presentation/pages/test_view.dart';

class AppRoutes {
  static List<GetPage> routes = [
    GetPage(name: RoutesPath.testing.path, page: () => TestView()),
  ];
}
