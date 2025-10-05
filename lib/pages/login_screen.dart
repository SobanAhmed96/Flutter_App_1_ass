import 'package:first_app/pages/home_screen.dart';
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
        leading: Padding(
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
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 164, 215, 239),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 20),
                      child: Icon(Icons.mail),
                    ),
                    Text(
                      "andrew_ainsley@yourdomain.com",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              // 4 Child
              Container(
                width: 400,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 164, 215, 239),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 20),
                      child: Icon(Icons.lock),
                    ),
                    Text(
                      "****************",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(width: 205),
                    Icon(Icons.visibility_off),
                  ],
                ),
              ),
              // 5 Child
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check_box,
                    color: const Color.fromARGB(255, 13, 57, 215),
                    size: 30,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Remender me",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              // 6 Child
              SizedBox(height: 10),
              SizedBox(
                width: 410,
                height: 60,

                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  HomeScreen()));
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 46, 26, 231),
                  ),
                  child: Text(
                    "Sign in",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
              ),
              // 7 Child
              SizedBox(height: 30),
              Center(
                child: Text(
                  "Forgot the password?",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // 7 Child
              SizedBox(height: 60),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.blueGrey,
                      indent: 20,
                      endIndent: 20,
                    ),
                  ),
                  Text('or continue with', style: TextStyle(fontSize: 19)),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                      indent: 20,
                      endIndent: 20,
                    ),
                  ),
                ],
              ),
              // 8 Child
              SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10),
                    padding: EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.facebook,size: 40,color: Colors.blueAccent,),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10),
                    padding: EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset("assets/images/Google.png",width: 40,height: 40,fit: BoxFit.fill,),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10),
                    padding: EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.apple,size: 40,color: Colors.black,),
                  ),
                ],
              ),
               // 9 Child
              SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have on account? ",style: TextStyle(fontSize: 19),),
                  Text(" Sign up",style: TextStyle(color: Colors.blueAccent,fontSize: 19),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
