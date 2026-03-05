import 'package:flutter/material.dart';
import 'sign_in.dart';

class CreationSuccessful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle, color: Colors.green, size: 80),
            SizedBox(height: 20),
            Text("Account Created Successfully!"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => SignIn()),
                );
              },
              child: Text("Continue to Sign In"),
            ),
          ],
        ),
      ),
    );
  }
}
