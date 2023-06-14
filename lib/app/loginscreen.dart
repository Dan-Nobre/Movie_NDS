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
      backgroundColor: const Color.fromRGBO(40, 40, 44, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(40, 40, 44, 1),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'imagens/Group 1.png',
              fit: BoxFit.contain,
              height: 27,
            ),
            Container(
                padding: const EdgeInsets.all(82),
                child: const Text(
                  "Login",
                  style: TextStyle(
                      fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                ))
          ],
        ),
        elevation: 0,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Padding(padding: EdgeInsets.only(bottom: 96)),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "E-mail",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w900),
                ),
              ),

              const Padding(padding: EdgeInsets.only(bottom: 5)),

              SizedBox(
                height: 44,
                child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                      fillColor: Colors.white,
                      hintText: "hola@soytian.tech",
                      // hintStyle: TextStyle(),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                  ),
                ),
              ),

              const Padding(padding: EdgeInsets.only(bottom: 53)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Password",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Text(
                    "Mandatory",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),

              const Padding(padding: EdgeInsets.only(bottom: 5)),

              SizedBox(
                height: 44,
                child: TextFormField(
                  obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  // labelText: 'Password',
                  hintText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                ),
              ),
              

              // TextField(
              //   obscureText: true,
              //   decoration: InputDecoration(
              //     filled: true,
              //     fillColor: Colors.white,
              //     labelText: 'Password',
              //     enabledBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(8.0),
              //     ),
              //   ),
              // ),

              const Padding(padding: EdgeInsets.only(bottom: 5)),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Forgot Your Password?",
                  style: TextStyle(
                      color: Color(0xff9F9F9F), fontFamily: "Poppins"),
                ),
              ),

              const Padding(padding: EdgeInsets.only(bottom: 97)),

              SizedBox(
                height: 40,
                width: 250,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(100, 198, 97, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6))),
                  onPressed: () {},
                  child: const Text("Continue"),
                ),
              ),

              const Padding(padding: EdgeInsets.only(bottom: 19)),

              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Don't have an account? Register!",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
