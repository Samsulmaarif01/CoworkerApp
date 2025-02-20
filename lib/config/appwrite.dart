import 'package:appwrite/appwrite.dart';

class AppWrite {
  static const projectId= '67b6e82c002bae238de3';
  static const endpointId = 'https://cloud.appwrite.io/v1';
  Client client = Client();

  void init() {
    Client client = Client();
    client
      .setEndpoint(endpointId)
      .setProject(projectId)
      .setSelfSigned(status: true);
  }
}
