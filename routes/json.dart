import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context) {
  return Response.json(
    body: <String, dynamic>{'hello': 'world!'},
  );
}
