import 'package:dart_frog/dart_frog.dart';
// The formData API is available since dart_frog >=0.3.1
// and the support for multipart form data was added in dart_frog >=0.3.4.

// curl --request POST --url http://localhost:8080/upload --form photo=@/photo.png
Future<Response> onRequest(RequestContext context) async {
  // Access the incoming request.
  final request = context.request;

  // Access the request body form data.
  final formData = await request.formData();

  // Retrieve an uploaded file.
  final photo = formData.files['photo'];

  // if (photo == null || photo.contentType.mimeType != contentTypePng.mimeType) {
  //   return Response(statusCode: HttpStatus.badRequest);
  // }

  if (photo == null) {
    // HttpStatus.badRequest
    return Response(statusCode: 400);
  }

  return Response.json(
    body: {'message': 'Successfully uploaded ${photo.name}'},
  );
}
