import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PageFirebases extends StatefulWidget {
  @override
  State<PageFirebases> createState() => _PageFirebasesState();
}

class _PageFirebasesState extends State<PageFirebases> {
  var login_google = new APIGoogleSignln();
  @override
  void initState() {
    super.initState();
    login_google.googleAccount.listen((account) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.blue,
                ),
                child: const Center(
                  child: Text(
                    "Google",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              onTap: () {
                login_google.login();
              },
            ),
            const SizedBox(height: 16),
            StreamBuilder<GoogleSignInAccount?>(
              stream: login_google.googleAccount.stream,
              builder: (context, snapshot) {
                if (!snapshot.hasData || snapshot.data == null) {
                  return const Text('Not logged in');
                }
                final account = snapshot.data!;
                return Column(
                  children: [
                    Image.network(account.photoUrl ?? ''),
                    const SizedBox(height: 8),
                    Text(account.email),
                    const SizedBox(height: 8),
                    Text(account.displayName ?? ''),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class APIGoogleSignln {
  var _googleSignin = GoogleSignIn();
  var googleAccount = Rx<GoogleSignInAccount?>(null);

  login() async {
    googleAccount.value = await _googleSignin.signIn();
  }

  logout() async {
    googleAccount.value = await _googleSignin.signOut();
  }
}
