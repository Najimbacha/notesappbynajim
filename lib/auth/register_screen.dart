import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notesappbynajim/constant/constants.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'asset/background.png',
            ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 110, top: 110),
              child: Text(
                "Register Now",
                style: GoogleFonts.poppins(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4,
                  left: 35,
                  right: 35,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        fillColor: Colors.grey[400],
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        hintText: "Full Name",
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 17,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        fillColor: Colors.grey[400],
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        hintText: "Email",
                        hintStyle: GoogleFonts.poppins(fontSize: 17),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      obscureText: _isHidden,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          fillColor: Colors.grey[400],
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                          hintText: "Password",
                          hintStyle: GoogleFonts.poppins(fontSize: 17),
                          suffixIcon: InkWell(
                            onTap: _togglePasswordView,

                            /// This is Magical Function
                            child: Icon(
                              _isHidden
                                  ?

                                  /// CHeck Show & Hide.
                                  Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          backgroundColor: Colors.black54),
                      onPressed: () {},
                      child: Text(
                        "Register",
                        style: GoogleFonts.poppins(),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already Register?",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                          // style: TextStyle(
                          //   color: Colors.black,
                          //   fontSize: 14,
                          // ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(loginscreen);
                          },
                          child: Text(
                            "Login",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            // style: TextStyle(
                            //   color: Colors.white,
                            //   fontSize: 13,
                            //   fontStyle: FontStyle.normal,
                            // ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = false;
    });
  }
}
