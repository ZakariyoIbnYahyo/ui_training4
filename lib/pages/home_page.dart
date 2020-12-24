import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("Cars", style: TextStyle(color: Colors.red, fontSize: 25),),
        brightness: Brightness.light,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.red,),
          ),
          IconButton(
              icon:Icon(Icons.shopping_cart, color: Colors.red,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              //#categories
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    oneTab(true, "All"),
                    oneTab(false, "Red"),
                    oneTab(false, "Black"),
                    oneTab(false, "Green"),
                    oneTab(false, "Blue"),
                  ],
                ),
              ),
              SizedBox(height: 20,),

              //#items
              items("assets/images/im_car1.jpg"),
              items("assets/images/im_car2.jpg"),
              items("assets/images/im_car3.jpg"),
              items("assets/images/im_car4.png"),
              items("assets/images/im_car5.jpg"),
            ],
          ),
        ),
      ),
    );
  }

  Widget oneTab(bool click, String title){
    return AspectRatio(
      aspectRatio: 2/1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: click ? Colors.red : Colors.white,
        ),
        child: Center(
          child: Text(title, style: TextStyle(color: click ? Colors.white : Colors.black, fontSize: click ? 18 : 16),),
        ),
      ),
    );
  }

  Widget items(String img){
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover
        ),
        boxShadow: [
          BoxShadow(
            color:Colors.grey[400],
            blurRadius:10,
            offset: Offset(0,10)
          )
        ]
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2),
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("PDP Car", style: TextStyle(color: Colors.white, fontSize: 27, fontWeight: FontWeight.bold),),
                      SizedBox(width: 10,),
                      Text("Electric", style: TextStyle(color: Colors.red, fontSize: 20),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text("100\$", style: TextStyle(color: Colors.white, fontSize: 24 ,fontWeight: FontWeight.bold),),
                ],
              ),
            ),

            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red
              ),
              child: Center(
                child: Icon(Icons.favorite_border, color: Colors.white, size: 24,),
              ),
            )
          ],
        ),

      ),
    );
  }
}
