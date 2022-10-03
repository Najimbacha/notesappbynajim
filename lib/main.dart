import 'package:flutter/material.dart';
import 'package:notesappbynajim/auth/login_screen.dart';
import 'package:notesappbynajim/auth/register_screen.dart';
import 'package:notesappbynajim/constant/constants.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: RegisterScreen(),
//     ),
//   );
// }
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        loginscreen: (context) => const LoginScreen(),
        registerscreen: (context) => const RegisterScreen()
      },
      home: const LoginScreen(),
    ),
  );
}
