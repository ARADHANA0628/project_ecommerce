import 'package:e_commerce/account.dart';
import 'package:e_commerce/forgetpass.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
        
      ),
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
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
              Row(children: [
                InkWell(onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ForgotpassScreen()),
                  );
                },
                  child: Text('Forget Password?', style: TextStyle(fontWeight: FontWeight.bold),))]),
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

                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 16, color: Colors.white),
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
                  Image.asset('assets/images/Apple.png', height: 50),
                  SizedBox(width: 10),
                  Image.asset('assets/images/facebook.png', height: 50),
                  SizedBox(width: 10),
                  Image.asset('assets/images/Google.png', height: 50),
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
