import 'package:dev_academy/Screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../constants.dart';
import 'signup.dart';


class EmailLogin extends StatefulWidget {
  static String id = "EmailLogin";

  @override
  State<EmailLogin> createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {
  final _auth = FirebaseAuth.instance;
  String? emailLogin;
  String? passwordLogin;
  bool error = false;
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height / 10,
            ),
            Center(
              child:
              Image.asset("assets/images/email.png", height: height / 3.5),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Log In",
                  style: GoogleFonts.poppins(textStyle: Constants.loginStyle)),
            ),
            error
                ? Text(
              "Please Enter Your Name and Phone Number",
              style: TextStyle(color: Colors.red),
            )
                : Text(""),
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
                          setState(() {
                            emailLogin = value;
                          });
                        },
                        // maxLength: 20,
                        // controller: _emailLogin,
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
                          setState(() {
                            passwordLogin = value;
                          });
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
                          "Login",
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
                      print(emailLogin);
                      print(passwordLogin);
                      try {
                        final User = await _auth.signInWithEmailAndPassword(
                            email: emailLogin!, password: passwordLogin!);
                        if (User != null)
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                      } catch (e) {
                        print(e);
                        setState(() {
                          error = true;
                          loading = false;
                        });
                      }
                      // print(_emailLogin.toString());
                      // print(_paaswordLogin.toString());
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
                        Navigator.pushNamed(context, EmailSignup.id);
                      },
                      child: Text(
                        "SignUp?",
                        style:
                        TextStyle(color: Colors.blueAccent, fontSize: 15),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}