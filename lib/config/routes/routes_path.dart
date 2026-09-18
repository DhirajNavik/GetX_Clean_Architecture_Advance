enum RoutesPath {
  todoPage(path: "/todoPage"),
  todoDetailsPage(path: "/todoDetailsPage");

  final String path;
  const RoutesPath({required this.path});
}
