class APIException implements Exception {
  final String message;

  const APIException({required this.message});

  @override
  String toString() => message;
}

class CacheException implements Exception {
  final String message;

  const CacheException({required this.message});
}
