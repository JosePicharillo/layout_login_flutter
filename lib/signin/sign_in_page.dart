import 'package:flutter/material.dart';
import 'package:layout_login_flutter/signin/meubotao.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout Login"),
        elevation: 2.0,
      ),
      body: _desenhaBody(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _desenhaBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(
            "Sign in",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 48.0),
          meubotao("Sign in with Google", Colors.black87, Colors.white,
              "images/google-logo.png"),
          const SizedBox(height: 8.0),
          meubotao("Sign in with Facebook", Colors.white,
              const Color(0xFF334D92), "images/facebook-logo.png"),
          const SizedBox(height: 8.0),
          SizedBox(
            height: 50.0,
            child: ElevatedButton(
              child: const Text(
                "Sign in with email",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.teal[700],
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(4.0),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          const Text(
            "or",
            style: TextStyle(fontSize: 14.0, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8.0),
          SizedBox(
            height: 50.0,
            child: ElevatedButton(
              child: const Text(
                "Go anonymous",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
              ),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.lime[300],
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(4.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
