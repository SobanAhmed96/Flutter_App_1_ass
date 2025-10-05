import 'package:first_app/Components/card.dart';
import 'package:first_app/pages/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: DetailScreen()));
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        
         leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            icon: Icon(Icons.arrow_back, size: 20),
          ),
        
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(30),
                child: Cardcom(
                  imageUrl: "assets/images/House2.png",
                  iconName: Icon(Icons.bookmark_border),
                  cardColor: Colors.white,
                  textColor: Colors.black,
                ),
              ),
              // 2nd Child
              SecendChild(),
              // 3rd Child
              SizedBox(height: 10),
              Text(
                "Gallery",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SecendLast(),
              SizedBox(height: 10),
              Text(
                "Price",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 1),
              LastEndChild(),
            ],
          ),
        ),
      ),
    );
  }
}

class SecendChild extends StatelessWidget {
  const SecendChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // 👈 Align text to left
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero, // 👈 Remove default padding
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/images/Profile.png"),
            radius: 30,
          ),
          title: const Text(
            "Rebecca Tetha",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          subtitle: const Text(
            "Owner Craftsman House",
            style: TextStyle(color: Colors.grey),
          ),
          trailing: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {},
            icon: const Icon(Icons.call, size: 18, color: Colors.white),
            label: const Text("Call", style: TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "Completely redone in 2021. 4 bedrooms, 2 bathrooms, 1 garage. Amazing curb appeal and entertainment area with water views. Tons of built-ins & extras. Read More...",
          style: TextStyle(fontSize: 15, color: Colors.black87, height: 1.5),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}

class SecendLast extends StatelessWidget {
  const SecendLast({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      height: 140,
      width: double.infinity,
      child: Expanded(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 10.0,
                  right: 10.0,
                ),
                child: Image.asset(
                  "assets/images/House4.png",
                  width: 110,
                  height: 110,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  "assets/images/House5.png",
                  width: 110,
                  height: 110,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  "assets/images/House6.png",
                  width: 110,
                  height: 110,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  "assets/images/House7.png",
                  width: 110,
                  height: 110,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LastEndChild extends StatelessWidget {
  const LastEndChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "\$5990000",
          style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 112,),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )
          ),
          child: Text(
            "BUY NOW",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300,color: Colors.white),
          ),
        ),
      ],
    );
  }
}
