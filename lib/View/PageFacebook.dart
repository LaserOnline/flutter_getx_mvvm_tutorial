import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FacebookLoginScreen extends StatefulWidget {
  const FacebookLoginScreen({Key? key}) : super(key: key);

  @override
  _FacebookLoginScreenState createState() => _FacebookLoginScreenState();
}

class _FacebookLoginScreenState extends State<FacebookLoginScreen> {
  String? _userName;
  String? _userEmail;
  String? _userImage;

  Future<void> _loginWithFacebook() async {
    try {
      final LoginResult result = await FacebookAuth.instance.login();

      if (result.status == LoginStatus.success) {
        // Login successful
        final AccessToken accessToken = result.accessToken!;

        // Get user data from Facebook API
        final userData = await FacebookAuth.instance.getUserData(
          fields: "name,email,picture.width(200)",
        );

        setState(() {
          _userName = userData['name'];
          _userEmail = userData['email'];
          _userImage = userData['picture']['data']['url'];
        });

        // TODO: Save user data to Firebase or your server
      } else {
        // Login failed
        print(result.status);
        print(result.message);
      }
    } on Exception catch (e) {
      // Error with Facebook authentication
      print(e.toString());
    } catch (e) {
      // Other errors
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: _loginWithFacebook,
          child: Text('Login with Facebook'),
        ),
      ),
      // Add a column to display user data
      // Only show the data if it has been retrieved successfully
      // Use a Flexible widget to allow the image to adjust its size
      bottomSheet: _userName != null && _userEmail != null && _userImage != null
          ? Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Name: $_userName',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Email: $_userEmail',
                    style: TextStyle(fontSize: 18),
                  ),
                  Flexible(
                    child: Image.network(
                      _userImage!,
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            )
          : null,
    );
  }
}
