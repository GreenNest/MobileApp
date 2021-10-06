import 'package:green_nest/config/storage/storage.dart';

class AuthConstant {
// ----------------------- TOKEN HANDLING --------------------------

  Future<void> storeToken(String accessToken) async {
    await Storage().setValue("access_token", accessToken);
    // Logger().i(response.accessToken);
  }

  Future<String> getApiKey() async {
    String apiKey = await Storage().getValue("access_token");

    if (apiKey != null)
      return apiKey;
    else
      return null;
  }

// ------------------ USER HANDLING -----------------------

  Future<void> storeRole(String role) async {
    await Storage().setValue("role", role);
    // Logger().i(response.accessToken);
  }

  Future<String> getRole() async {
    String role = await Storage().getValue("role");

    if (role != null)
      return role;
    else
      return null;
  }

  Future<void> storeId(String role) async {
    await Storage().setValue("id", role);
    // Logger().i(response.accessToken);
  }

  Future<String> getId() async {
    String id = await Storage().getValue("id");

    if (id != null)
      return id;
    else
      return null;
  }
}
