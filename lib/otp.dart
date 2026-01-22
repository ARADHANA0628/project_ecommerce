import 'package:e_commerce/newpass.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen ({super.key});

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
              SizedBox(height: 30),
              Text(
                'Enter Verification Code',
                style: GoogleFonts.laila(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text('We will send you a message to set or reset your new password',),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter OTP here',
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
                InkWell(onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => NewpassScreen()),
                  );
                },
                  child: Text(
                    'Confirm',
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
