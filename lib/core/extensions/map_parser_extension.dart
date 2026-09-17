import 'dart:convert';

extension MapParserExtension on Map<String, dynamic> {
  List<T> parseData<T>(T Function(Map<String, dynamic>) fromJson) {
    final data = this as List;

    return data.map((e) => fromJson(e as Map<String, dynamic>)).toList();
  }
}

extension LocalParserExtension on List<Map<String, Object?>> {
  List<T> parseList<T>(T Function(Map<String, dynamic> json) fromJson) {
    return map((e) => fromJson(Map<String, dynamic>.from(e))).toList();
  }
}

extension ListParserExtension on List<dynamic> {
  List<T> parseData<T>(T Function(Map<String, dynamic>) fromJson) {
    return map((e) => fromJson(e as Map<String, dynamic>)).toList();
  }
}

extension StringParserExtension on String {
  Map<String, dynamic> parseJson() => jsonDecode(this) as Map<String, dynamic>;

  List<T> parseListData<T>(T Function(Map<String, dynamic>) fromJson) {
    return (jsonDecode(this) as List<dynamic>).parseData(fromJson);
  }
}
