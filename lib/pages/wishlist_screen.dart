import 'package:first_app/Components/card.dart';
import 'package:first_app/pages/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: WishlistScreen(),));
}

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wishlist",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        leading: IconButton(onPressed: (){ 
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(child:  Container(
        margin: EdgeInsets.all(60),
        child: Column(
          children: [
            Cardcom(imageUrl: "assets/images/House.png",iconName: Icon(Icons.bookmark_border),),
            Cardcom(imageUrl: "assets/images/House2.png",iconName: Icon(Icons.bookmark_border),),
          ],
        ),
      ),
    ),);
  }
}