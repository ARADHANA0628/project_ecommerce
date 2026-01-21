import 'package:e_commerce/otp.dart';
import 'package:flutter/material.dart';

class ForgotpassScreen extends StatelessWidget {
  const ForgotpassScreen ({super.key});

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
                'Forgot Password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text('We will send you a message to set or reset your new password'),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Your Email / Phone no',
                  prefixIcon: Icon(Icons.email),
                ),
              ),

              SizedBox(height: 20,),
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

                child: 
                InkWell(
                  onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => OtpScreen()),
                  );
                },
                  child: Text(
                    'Send Verfication',
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ),
              ),
              
              
            ],
          ),
        ),
      ),
    );
  }
}
