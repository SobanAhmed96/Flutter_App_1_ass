import 'package:flutter/material.dart';

class Cardcom extends StatelessWidget {
  final String imageUrl;
  final Icon?  iconName;
  final Color? cardColor;
  final Color? textColor;
  final VoidCallback? onClick;
  const Cardcom({super.key, required this.imageUrl, this.iconName,this.cardColor,this.textColor,this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color:  cardColor ?? const Color.fromARGB(255, 27, 3, 70),
          borderRadius: BorderRadius.circular(35),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
              width: 350,
              height: 240,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "CRAFTSMAN HOUSE",
                          style: TextStyle(color: textColor ?? Colors.white, fontSize: 18),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(width: 100),
                        if(iconName != null)
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.lightBlueAccent,
                          ),
                          child: iconName!
                        ),
                        
                      ],
                    ),
                    Text(
                      "520 N Btoudry Ave, Los Angeles",
                      style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 10),

                    Row(
                      children: [
                        Icon(Icons.bed_rounded, color: Colors.yellow, size: 30),
                        SizedBox(width: 5),
                        Text(
                          "4 Beds",
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.bathtub, color: Colors.yellow, size: 30),
                        SizedBox(width: 5),
                        Text(
                          "4 Baths",
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.car_repair, color: Colors.yellow, size: 30),
                        SizedBox(width: 5),
                        Text(
                          "1 Garage",
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                        SizedBox(width: 5),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
