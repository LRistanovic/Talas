import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageRepository {
  static const storage = FlutterSecureStorage();

  static Future<void> store({required String token, required int userId}) async {
    await storage.write(key: "token", value: token);
    await storage.write(key: "userId", value: userId.toString());
  }

  static Future<bool> loggedIn() async {
    String? userId = await storage.read(key: "userId");
    String? token = await storage.read(key: "token");
    return userId != null && token != null;
  }

  static Future<int> userId() async {
    String? val = await storage.read(key: "userId");
    int id = int.parse(val!);
    return id;
  }

  static Future<String> token() async {
    String? val = await storage.read(key: "token");
    return val!;
  }

  static Future<void> logout() async {
    await storage.deleteAll();
  }
}