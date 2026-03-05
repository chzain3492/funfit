import 'package:flutter/material.dart';
import 'successfully.dart';

class VerificationCode extends StatelessWidget {
  final TextEditingController code = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Verification Code")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: code,
              decoration: InputDecoration(labelText: "Enter Code"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => Successfully()),
                );
              },
              child: Text("Verify"),
            ),
          ],
        ),
      ),
    );
  }
}
