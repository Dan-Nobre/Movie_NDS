import 'package:flutter/material.dart';
import 'package:movie_nds/app/loginscreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _showPassword = false;

  void _navigateToLoginScreen(BuildContext context) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
    }

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
                padding: const EdgeInsets.all(8),
                child: const Text(
                  "Make your Account",
                  style: TextStyle(
                      fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                ))
          ],
        ),
        elevation: 0,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            
            const Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text(
                    "E-mail",
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
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "hola@soytian.tech",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0)
                  ),
                ),
              ),
            ),

            const Padding(padding: EdgeInsets.only(bottom: 21)),

            const Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text(
                    "Confirm your e-mail",
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
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "hola@soytian.tech",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0)
                  ),
                ),
              ),
            ),
            
            Padding(padding: EdgeInsets.only(bottom: 21)),

            Row(
                children: const [
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text(
                    "Password",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),

            Padding(padding: EdgeInsets.only(bottom: 5)),

            SizedBox(
                height: 44,
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.bottom,
                  obscureText: _showPassword == false ? true : false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    // labelText: 'Password',
                    hintText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    suffixIcon: GestureDetector(
                      child: Icon(_showPassword == false
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onTap: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                    ),
                  ),
                ),
              ),

              Padding(padding: EdgeInsets.only(bottom: 21)),

              Row(
                children: const [
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text(
                    "Confirm Password",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),

            Padding(padding: EdgeInsets.only(bottom: 5)),

            SizedBox(
                height: 44,
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.bottom,
                  obscureText: _showPassword == false ? true : false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    // labelText: 'Password',
                    hintText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    suffixIcon: GestureDetector(
                      child: Icon(_showPassword == false
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onTap: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                    ),
                  ),
                ),
              ),

              Padding(padding: EdgeInsets.only(bottom: 50)),

              SizedBox(
                height: 40,
                width: 250,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(100, 198, 97, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6))),
                  onPressed: () {
                    _navigateToLoginScreen(context);
                  },
                  child: const Text("Register",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w900
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}