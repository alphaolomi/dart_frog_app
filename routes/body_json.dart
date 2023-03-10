import 'package:dart_frog/dart_frog.dart';


// curl --request POST --url http://localhost:8080/body_json --header 'content-type: application/json' --data '{"foo": "bar"}'
Future<Response> onRequest(RequestContext context) async {
  // Access the incoming request.
  final request = context.request;

  // Access the request body as parsed `JSON`.
  final body = await request.json();

  return Response.json(body: {'request_body': body});
}