import 'package:dart_frog/dart_frog.dart';

// curl --request POST --url http://localhost:8080/body  --header 'Content-Type: text/plain' --data 'Hello World'
Future<Response> onRequest(RequestContext context) async {
  // Access the incoming request.
  final request = context.request;

  // Access the request body as a `String`.
  final body = await request.body();

  return Response(body: 'The body is "$body".');
}