import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proj1/pages/signup.dart';

import 'forgot_password.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  bool showLogin = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 29, 56, 1),

      //------------------------------LOGO----------------------------------------------
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: -5,
            right: 0,

            child: Center(
              child: Image.asset("assets/images/logo.png", height: 250),
            ),
          ),

          //------------------------------------RECTANGLE WHITE--------------------
          Align(
            alignment: Alignment.bottomCenter,

            child: Container(
              height: 530,
              width: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),

              child: Column(
                children: [
                  const SizedBox(height: 30),

                  //---------------------------OBLONG GREY-------------------------------
                  Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(232, 229, 229, 1), //lightgrey
                      borderRadius: BorderRadius.circular(30),
                    ),

                    child: Row(
                      children: [
                        //-----------------------LOGIN TOGGLE--------------------------
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                showLogin = true;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(
                                right: 6,
                                left: 7,
                                bottom: 6,
                                top: 6,
                              ),
                              decoration: BoxDecoration(
                                color: showLogin
                                    ? Colors.white
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "LOG IN",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: showLogin
                                        ? Color.fromRGBO(15, 29, 56, 1)
                                        : Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //----------------------------SIGN UP TOGGLE---------------------------
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                showLogin = false;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(
                                right: 7,
                                left: 6,
                                bottom: 6,
                                top: 6,
                              ),
                              decoration: BoxDecoration(
                                color: !showLogin
                                    ? Colors.white
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "SIGN UP",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: !showLogin
                                        ? Color.fromRGBO(15, 29, 56, 1)
                                        : Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //-----------------------TEXTBOX------------------------------------
                  showLogin
                      //--------------------------LOG IN ----------------------------------
                      ? Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            left: 40,
                            right: 40,
                          ),
                          child: Column(
                            children: [
                              //-------------------------EMAIL----------------------------
                              TextField(
                                obscureText: false,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.mail_outline,
                                    color: Color.fromRGBO(15, 29, 56, 1),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(15, 29, 56, 0.5),
                                      width: 1.5,
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(15, 29, 56, 1),
                                      width: 2.0,
                                    ),
                                  ),
                                  hintText: "Email or Username",
                                  hintStyle: TextStyle(
                                    color: Color.fromRGBO(15, 29, 56, 0.5),
                                    fontSize: 16,
                                  ),
                                ),
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  color: Color.fromRGBO(15, 29, 56, 1),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),

                              //---------------------------NEXT LINE----------------------------
                              SizedBox(height: 10),

                              //-------------------------PASSWORD---------------------------
                              TextField(
                                obscureText: true,
                                obscuringCharacter: "●",
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.lock_outline,
                                    color: Color.fromRGBO(15, 29, 56, 1),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(15, 29, 56, 0.5),
                                      width: 1.5,
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(15, 29, 56, 1),
                                      width: 2.0,
                                    ),
                                  ),
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                    color: Color.fromRGBO(15, 29, 56, 0.5),
                                    fontSize: 16,
                                  ),
                                ),
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  color: Color.fromRGBO(15, 29, 56, 1),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),

                              //---------------------------NEXT LINE----------------------------
                              SizedBox(height: 5),

                              //---------------------------REMEMBER ME-----------------------------
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: isChecked,
                                        onChanged: (value) {
                                          setState(() {
                                            isChecked =
                                                value!; //para macheck and mauncheck
                                          });
                                        },
                                      ),
                                      Text(
                                        "Remember Me",
                                        style: TextStyle(
                                          color: Color.fromRGBO(
                                            15,
                                            29,
                                            56,
                                            0.5,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TextButton(
                                    //pupunta sya don sa forgot password
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const ForgotPassword(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      "Forgot Password?",
                                      style: TextStyle(
                                        color: Color.fromRGBO(15, 29, 56, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              //---------------------------NEXT LINE----------------------------
                              SizedBox(height: 10),

                              //-------------------------LOG IN BUTTON---------------------------
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color.fromRGBO(
                                    15,
                                    29,
                                    56,
                                    1,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 130,
                                    vertical: 15,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),

                                  elevation: 5, //shadow
                                ),
                                child: Text(
                                  'LOG IN',
                                  style: GoogleFonts.jua(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              //---------------------------NEXT LINE----------------------------
                              SizedBox(height: 20),

                              //----------------------OTHERS--------------------------------
                              Column(
                                children: [
                                  //----------------------LINE---------------------------
                                  Divider(
                                    color: Color.fromRGBO(15, 29, 56, 0.5),
                                    thickness: 2,
                                    indent: 70,
                                    endIndent: 70,
                                  ),

                                  //---------------------------NEXT LINE----------------------------
                                  SizedBox(
                                    height: 10,
                                  ), // spacing between line and text
                                  //---------------------------OTHER WORD----------------------------
                                  Text(
                                    "OTHER",
                                    style: TextStyle(
                                      color: Color.fromRGBO(15, 29, 56, 0.5),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),

                              //---------------------------NEXT LINE----------------------------
                              SizedBox(
                                height: 10,
                              ), // spacing between line and text
                              //--------------------------LOGIN FROM OTHER APP--------------------
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    'assets/images/ggl.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                  Image.asset(
                                    'assets/images/fb.png',
                                    width: 40,
                                    height: 40,
                                  ),
                                  Image.asset(
                                    'assets/images/x.png',
                                    width: 40,
                                    height: 40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      : Builder(
                          builder: (context) {
                            Future.microtask(() {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpPage(),
                                ),
                              );
                            });
                            return const SizedBox.shrink(); // Empty widget while redirecting
                          },
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
