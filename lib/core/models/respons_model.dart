class ResponseModel {
  final bool isError;
  final Object? data;
  final String ?message;

  ResponseModel({
    required this.isError,
    required this.data,
     this.message,
  });
}
