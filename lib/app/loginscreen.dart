import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(40, 40, 44, 1),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('imagens/Group 1.png',
            fit: BoxFit.contain,
            height: 27,
            ),
            Container(
              padding: const EdgeInsets.all(82),
              child: Text("Login")
            )
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 96),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}