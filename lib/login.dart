import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 100.0, left: 16, right: 16, bottom: 16),
          child: Column(
            children: [
              Text(
                'Login to your Account',
                // I Made changes on the text//
                style: GoogleFonts.dekko(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[900]),
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintText: 'Email',
                      hintStyle: GoogleFonts.carroisGothic(
                          color: Colors.grey, fontSize: 15),
                      prefixIcon: Icon(
                        Icons.mail_outline_outlined,
                        color: Colors.grey,
                      ),
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintText: 'Password',
                      hintStyle: GoogleFonts.carroisGothic(
                          color: Colors.grey, fontSize: 15),
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        color: Colors.grey,
                      ),
                      suffixIcon: Icon(
                        Icons.visibility_off_outlined,
                        color: Colors.grey,
                      ),
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Checkbox(
                    activeColor: Colors.green,
                    value: false,
                    onChanged: (value) {},
                  ),
                  Text(
                    'Remember me',
                    style: GoogleFonts.carroisGothic(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Center(
                child: Text(
                  'Forgot the password',
                  style: TextStyle(color: Colors.green, fontSize: 17),
                ),
              ),
              const Spacer(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Sign up',
                    style: TextStyle(color: Colors.green),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
