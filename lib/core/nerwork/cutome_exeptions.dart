class CustomException implements Exception {
  String errorMassage;
  int statusCode;
  final Map<String, dynamic>? errorResponse;
  CustomException({
    required this.statusCode,
    required this.errorMassage,
    this.errorResponse
  });

  @override
  String toString() {
    return 'SomeThing Wrong Happen: \n$statusCode';
  }
}
