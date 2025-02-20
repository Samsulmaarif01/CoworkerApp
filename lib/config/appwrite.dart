import 'package:appwrite/appwrite.dart';

class AppWrite {
  static const projectId = '67b6e82c002bae238de3';
  static const endpointId = 'https://cloud.appwrite.io/v1';
  static Client client = Client();
  static late Account account;

  static init() {
    Account account = Account(client);
    client
        .setEndpoint(endpointId)
        .setProject(projectId)
        .setSelfSigned(status: true);
  }
}
