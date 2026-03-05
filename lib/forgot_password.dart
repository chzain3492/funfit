import 'package:flutter/material.dart';
import 'verification_code.dart';

class ForgotPassword extends StatelessWidget {
  final TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forgot Password")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: email,
              decoration: InputDecoration(labelText: "Enter Email"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => VerificationCode()),
                );
              },
              child: Text("Send Code"),
            ),
          ],
        ),
      ),
    );
  }
}
