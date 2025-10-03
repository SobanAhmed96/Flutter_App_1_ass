import 'package:flutter/material.dart';

void main() {
  runApp(LoginScreen());
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 5, right: 5, bottom: 5),
        width: double.infinity,
        child: Center(
          child: Column(
            children: [
              // First Child
              Image.asset(
                "assets/images/Login_Logo.png",
                width: 200,
                height: 200,
              ),
              // 2 Child
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 15),
                child: Text(
                  "Login to Your Account",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              // 3 Child
              Container(
                width: 400,
                height: 50,
                decoration: BoxDecoration(color: const Color.fromARGB(255, 164, 215, 239),borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 20),
                      child: Icon(Icons.mail),
                    ),
                    Text("andrew_ainsley@yourdomain.com",style: TextStyle(fontWeight: FontWeight.w500),)
                  ],
                ),
              ),
                    SizedBox(height: 15,),
              // 4 Child
              Container(
                width: 400,
                height: 50,
                decoration: BoxDecoration(color: const Color.fromARGB(255, 164, 215, 239),borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 20),
                      child: Icon(Icons.lock),
                    ),
                    Text("****************",style: TextStyle(fontWeight: FontWeight.w900),),
                    SizedBox(width: 205,),
                    Icon(Icons.visibility_off)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
