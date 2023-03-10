import 'package:dart_frog/dart_frog.dart';

// curl --request GET --url http://localhost:8080/query_params?name=John
Response onRequest(RequestContext context) {
  // Access the incoming request.
  final request = context.request;

  // Access the query parameters as a `Map<String, String>`.
  final params = request.uri.queryParameters;

  // Get the value for the key `name`.
  // Default to `there` if there is no query parameter.
  final name = params['name'] ?? 'there';

  return Response(body: 'Hi $name');
}