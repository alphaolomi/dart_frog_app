import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context) {
  // Access the incoming request.
  final request = context.request;

  // Access the headers as a `Map<String, String>`.
  final headers = request.headers;

  // Do something with the headers...

  return Response(body: 'Hello World');
}