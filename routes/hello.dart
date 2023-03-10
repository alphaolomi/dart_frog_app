import 'package:dart_frog/dart_frog.dart';

// curl http://localhost:8080/hello
Response onRequest(RequestContext context) {
  // Access the incoming request.
  // final request = context.request;

  // Do stuff with the incoming request...
  // Log the request.
  // print('Request: ${request.method} ${request.uri}');

  // Return a response.
  return Response(body: 'Hello World');
}
