class AppUrls {
  AppUrls._();

  static const String baseUrl = 'https://jsonplaceholder.typicode.com';
  static const String getAllTodo = "/todos";
  static String getTodo(int id) => "/todos/$id";
}
