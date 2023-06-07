import "package:flutter/material.dart";

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(40, 40, 44, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(40, 40, 44, 1),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'imagens/Group 1.png',
              fit: BoxFit.contain,
              height: 27,
            ),
            Container(padding: const EdgeInsets.all(82), child: Text("Login"))
          ],
        ),
      ),
      body: Container(
        
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(padding: EdgeInsets.only(bottom: 96)),

              TextField(
                keyboardType: TextInputType.emailAddress, 
                decoration: InputDecoration(
                  hintText: "hola@soytian.tech",
                  labelText: 'E-mail',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)
                  ),
                
                ),
              ),

              Padding(padding: EdgeInsets.only(bottom: 74)),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)
                  )
                ),
              ),

              Text("Forgot Your Password?"),

              ElevatedButton(onPressed: () {},
              child: Text("Continue"),
              ),

              Text("Don't have an account? Register!")
            ],
          ),
        ),
      ),
    );
  }
}
