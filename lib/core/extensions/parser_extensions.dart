
extension ListParserExtension on List<dynamic> {
  List<T> parseData<T>(T Function(Map<String, dynamic>) fromJson) {
    return map((e) => fromJson(e as Map<String, dynamic>)).toList();
  }
}
