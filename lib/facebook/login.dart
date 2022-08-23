part of social_media_logins;

class Facebook {
  static login() async {
    FacebookLogin facebookLogin = FacebookLogin();
    FacebookLoginResult result = await facebookLogin.logIn(permissions: [
      FacebookPermission.publicProfile,
      FacebookPermission.email,
    ]);

    switch (result.status) {
      case FacebookLoginStatus.success:
        String _t = result.accessToken!.token;

        http.Response graphResponse = await http.get(
          Uri.parse(
            'https://graph.facebook.com/v5.0/me?fields=name,first_name,last_name,birthday,email&access_token=$_t',
          ),
        );
        Map<String, dynamic> decoded = jsonDecode(graphResponse.body);
        return decoded;
      case FacebookLoginStatus.cancel:
        return 'cancel';
      case FacebookLoginStatus.error:
        return 'An error occured while connecting to Facebook servers. Please try again later.';
    }
  }

  static void logout() async {
    await FacebookLogin().logOut();
  }
}
