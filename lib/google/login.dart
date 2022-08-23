part of social_media_logins;

class Google {
  static Future<GoogleSignInAccount?> login() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: ['email', 'https://www.googleapis.com/auth/userinfo.profile'],
    );

    return await _googleSignIn.signIn();
  }

  static void logout() async {
    await GoogleSignIn().signOut();
  }
}
