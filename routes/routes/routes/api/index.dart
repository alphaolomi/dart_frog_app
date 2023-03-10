import 'package:dart_frog/dart_frog.dart';

// curl --request GET --url http://localhost:8080/api
Future<Response> onRequest(RequestContext context) async {
  final result = await _someFuture();
  return Response(body: 'Result is: $result!');
}

Future<String> _someFuture() async {
  return Future.delayed(const Duration(seconds: 1), () => 'Hello World');
}
