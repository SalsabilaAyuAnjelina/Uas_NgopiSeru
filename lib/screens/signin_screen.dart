import 'package:flutter/material.dart';
import 'package:login/reusable_widgets/reusable_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/campur/color_campur.dart';
import 'package:login/screens/home_screen.dart';
import 'package:login/screens/signup_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("FFD7CCC8"),
          hexStringToColor("FFA1887F"),
          hexStringToColor("FF4E342E")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                Text(
                  "Selamat Datang",
                  style:
                      GoogleFonts.pacifico(fontSize: 40, color: Colors.white),
                ),
                logoWidget("assets/images/logo.png"),
                const SizedBox(
                  height: 5,
                ),
                 Text(
                  "Masuk",
                  style:
                      GoogleFonts.pacifico(fontSize: 35, color: Colors.white),
                ),
                reusableTextField("Masukkan Nama", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(
                  height: 10,
                ),
                reusableTextField("Masukkan Password", Icons.lock_outline, true,
                    _passwordTextController),
                const SizedBox(
                  height: 5,
                ),
                signInSignUpButton(context, true, () {
                  Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeScreen()));
                }),
                
                signUpOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Belum punya akun?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            " Daftar",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}