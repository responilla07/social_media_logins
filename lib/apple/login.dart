part of social_media_logins;

class Apple {
  static Future<AuthorizationCredentialAppleID> login() async {
    final credentials = await SignInWithApple.getAppleIDCredential(scopes: [
      AppleIDAuthorizationScopes.email,
      AppleIDAuthorizationScopes.fullName,
    ]);

    return credentials;
  }

  // TODO no available apple logout
  // static void logout() async {
  //
  // }
}
