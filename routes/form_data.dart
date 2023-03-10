import 'package:dart_frog/dart_frog.dart';

// curl --request POST --url http://localhost:8080/form-data --form 'name=John Doe' --form 'age=42'
Future<Response> onRequest(RequestContext context) async {
  // Access the incoming request.
  final request = context.request;

  // Access the request body form data.
  final formData = await request.formData();

  return Response.json(body: {'form_data': formData.fields});
}