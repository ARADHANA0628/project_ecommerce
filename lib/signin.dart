import 'package:e_commerce/account.dart';
import 'package:e_commerce/forgetpass.dart';
import 'package:e_commerce/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  // void navigate() {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => AccountScreen());
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png', height: 80),

              SizedBox(height: 30),
              Text(
                'Welcome to E-Commerce',
                style: GoogleFonts.laila(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text('Sign in to continue'),
              SizedBox(height: 60),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Your Email / Phone no',
                  prefixIcon: Icon(Icons.person),
                ),
              ),

              SizedBox(height: 10),
              TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ForgotpassScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 12,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),

                child: InkWell(
                  onTap: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => Homepage()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text('OR'),
              SizedBox(height: 10),
              Text('LogIn Using'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _socialButton(
                    context,
                    'assets/images/Apple.png',
                    'Sign in with Apple',
                    () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Sign in with Apple'),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 10),
                  _socialButton(
                    context,
                    'assets/images/facebook.png',
                    'Sign in with Facebook',
                    () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Sign in with Facebook'),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 10),
                  _socialButton(
                    context,
                    'assets/images/Google.png',
                    'Sign in with Google',
                    () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Sign in with Google'),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20),
              Text('Dont have an account?'),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AccountScreen()),
                  );
                },
                child: Text(
                  'Register',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _socialButton(
  BuildContext context,
  String assetPath,
  String tooltip,
  VoidCallback onTap,
) {
  return Semantics(
    label: tooltip,
    button: true,
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Tooltip(
            message: tooltip,
            child: Image.asset(assetPath, height: 50),
          ),
        ),
      ),
    ),
  );
}
