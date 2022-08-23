# social_media_logins

<!-- [![pub package](https://img.shields.io/pub/v/social_media_logins)](https://pub.dartlang.org/packages/social_media_logins) -->
<!-- ![Analyze & Test](https://github.com/Innim/flutter_login_facebook/actions/workflows/dart.yml/badge.svg?branch=master) -->

Flutter Plugin to login via Social Media Accounts.

Available Social Media Logins:

1. Facebook
2. Google
3. Apple

## Getting Started

To use this plugin:

1. Add `social_media_logins` as dependency in your pubspec.yaml file

```xml
  social_media_logins:
        git:
          url: git://github.com/responilla07/social_media_logins.git
          ref: main
```
<em>Note* please refer to the documentation of the plugins owner use in this plugin</em>

2. [Setup Facebook](https://pub.dev/packages/flutter_login_facebook#getting-started)
3. [Setup Google](https://pub.dev/packages/google_sign_in)
4. [Setup Apple](https://pub.dev/packages/sign_in_with_apple#integration)

Example: 

```dart
import 'package:social_media_logins/social_media_logins.dart';

// Login:
// Facebook
var fbRes = await Facebook.login();
print('Facebook Account Details: $fbRes');
// Google
GoogleSignInAccount googleAccnt = await Google.login();
print('Google Account Email: ${googleUser.email}');
// Apple
AuthorizationCredentialAppleID credentials = await Apple.login();
print('Apple Id Email: ${credentials.email}');

// Logout:
// Facebook
await Facebook.logout();
// Google
await Google.logout();
// Apple
// No Available
```

<em>This is just the simplyfied Flutter Plugin use for one of the popular flutter plugin for social media login. 

The following plugins are:
1. flutter_login_facebook
2. google_sign_in
3. sign_in_with_apple
</em>
