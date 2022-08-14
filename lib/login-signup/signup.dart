import 'package:dev_academy/Screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../constants.dart';
import 'login.dart';


class EmailSignup extends StatefulWidget {
  static String id = "EmailSignup";

  @override
  State<EmailSignup> createState() => _EmailSignupState();
}

class _EmailSignupState extends State<EmailSignup> {
  final _auth = FirebaseAuth.instance;
  String? email;
  String? password;
  String? confirmPassword;
  bool loading = false;
  String error = "";
  @override
  Widget build(BuildContext context) {
    TextEditingController _email = TextEditingController();

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height / 20,
            ),
            Center(
              child: Image.asset("assets/images/registration.png",
                  height: height / 3.5),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Sign Up",
                  style: GoogleFonts.poppins(textStyle: Constants.loginStyle)),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                error,
                style: TextStyle(color: Colors.red),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    // padding: EdgeInsets.all(.0),
                    decoration: Constants.decorationNeumorphic3,
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(),
                      child: TextField(
                        onChanged: (value) {
                          email = value;
                        },
                        // maxLength: 20,

                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.blueAccent,
                            ),
                            //   counterText: "",
                            border: InputBorder.none,
                            hintText: "Email",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    // padding: EdgeInsets.all(.0),
                    decoration: Constants.decorationNeumorphic3,
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(),
                      child: TextField(
                        onChanged: (value) {
                          password = value;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.password,
                              color: Colors.blueAccent,
                            ),
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    // padding: EdgeInsets.all(.0),
                    decoration: Constants.decorationNeumorphic3,
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(),
                      child: TextField(
                        onChanged: (value) {
                          confirmPassword = value;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.password,
                              color: Colors.blueAccent,
                            ),
                            border: InputBorder.none,
                            hintText: "Confirm Password",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  InkWell(
                    child: Container(
                      height: 50,
                      decoration: Constants.decorationNeumorphic,
                      child: Center(
                        child: loading
                            ? CircularProgressIndicator(
                          color: Colors.white,
                        )
                            : Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    onTap: () async {
                      setState(() {
                        loading = true;
                      });
                      print(email);
                      print(password);
                      print(confirmPassword);
                      if (email.toString().isNotEmpty &&
                          password.toString().isNotEmpty &&
                          password == confirmPassword) {
                        try {
                          final newUser =
                          await _auth.createUserWithEmailAndPassword(
                              email: email!, password: password!);
                          if (newUser != null)
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                        } catch (err) {
                          print(err);
                          setState(() {
                            loading = false;
                            error = err.toString();
                          });
                        }
                      } else {
                        setState(() {
                          loading = false;
                          error = "Check Email id and Password";
                        });
                      }
                      // getName();
                      // if(_phoneNumber.text.isNotEmpty){
                      //   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext)=>OTP_Verification(phoneNumber: _phoneNumber.text)));
                      // }
                    },
                  ),
                  SizedBox(
                    height: height / 40,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, EmailLogin.id);
                      },
                      child: Text(
                        "Login with email?",
                        style:
                        TextStyle(color: Colors.blueAccent, fontSize: 15),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
