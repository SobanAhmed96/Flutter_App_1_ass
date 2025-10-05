import 'package:first_app/Components/button.dart';
import 'package:first_app/Components/card.dart';
import 'package:first_app/pages/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen()));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: 900,
        margin: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1 child
            Text(
              "Location",
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            // 2 child
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Los Angeles, CA",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(width: 210),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromARGB(255, 236, 212, 220),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.bookmark_outline, size: 24),
                  ),
                ),
              ],
            ),
            // 3 child
            SizedBox(height: 20),
            Text(
              "Discover Best",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              "Suitable Property",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
                 SizedBox(height: 20,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                 Button(btnText: "House", isSelect: selectIndex == 0, onTap: (){
                  setState((){
                    selectIndex = 0;
                  });
                 }),
                 SizedBox(width: 10,),
                 Button(btnText: "Appartement", isSelect: selectIndex == 1, onTap: (){
                  setState((){
                    selectIndex = 1;
                  });
                 }),
                 SizedBox(width: 10,),
                 Button(btnText: "Flot", isSelect: selectIndex == 2, onTap: (){
                  setState((){
                    selectIndex = 2;
                  });
                 }),
                 
                ],
              ),
            ),
            SizedBox(height: 20,),
          Text("Best for you",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

            // New Child
            NewChild()
          ],
        ),
      ),
    );
  }
}

class NewChild extends StatelessWidget {
  const NewChild({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment:CrossAxisAlignment.start ,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Cardcom(imageUrl: "assets/images/House.png",),
          Cardcom(imageUrl: "assets/images/House2.png", iconName: Icon(Icons.bookmark_border), cardColor: Colors.white,textColor: Colors.black,),
         
        ],
      ),
    );
  }
}