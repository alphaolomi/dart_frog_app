import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context) {
  // Access the incoming request.
  final request = context.request;

  // Do stuff with the incoming request...

  // Return a response.
  return Response(body: 'Hello World');
}
