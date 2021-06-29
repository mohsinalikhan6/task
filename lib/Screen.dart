import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';




class Task extends StatefulWidget {

  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Ecom App UI",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          )
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
              child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
                          child: Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Items",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
              child: Align(
                  alignment: Alignment.topRight,
                child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Text(
                        "View More",
                        style: TextStyle(color: Colors.pink),
                      ),
                    ),
                  ),
                ),
            ),

                          CarouselSlider(
                items: <Widget>[
                  Container(
                      width: 100,
                      height: 50,
                      child: Image.asset(
                        "assets/iphone12.jpg",
                        width: 80,
                      )),
                  Container(
                    width: 100,
                    height: 50,
                    child: Image.asset(
                      "assets/gamingpc.jpg",
                      width: 80,
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    child: Image.asset(
                      "assets/macbookpro.png",
                      width: 80,
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    child: Image.asset(
                      "assets/macbookair.png",
                      width: 80,
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    child: Image.asset(
                      "assets/backlitkeyboard.jpg",
                      width: 80,
                    ),
                  ),
                ],
                options: CarouselOptions(
                  autoPlay: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "More Categories",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),



              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                              child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 50,
    decoration: BoxDecoration(
      color: Colors.teal,
      borderRadius: BorderRadius.all(
          Radius.circular(10)
          ),
          ),
                      child: SingleChildScrollView(
                            child: Column(
                          children: [
                    Icon(Icons.laptop),
                    Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Text("Laptop"),
                    ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                width: 10,
                    ),
                    Container(
                      width: 100,
                      height: 50,
    decoration: BoxDecoration(
      color: Colors.teal,
      borderRadius: BorderRadius.all(
          Radius.circular(10)
          ),
          ),
                      child: SingleChildScrollView(
                            child: Column(
                          children: [
                    Icon(Icons.print),
                    Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Text("Printer"),
                    ),
                          ],
                        ),
                      ),
                    ),
                                        SizedBox(
                width: 10,
                    ),
                    Container(
                      width: 100,
                      height: 50,
    decoration: BoxDecoration(
      color: Colors.teal,
      borderRadius: BorderRadius.all(
          Radius.circular(10)
          ),
          ),
                      child: SingleChildScrollView(
                            child: Column(
                          children: [
                    Icon(Icons.phone_android),
                    Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Text("Mobile"),
                    ),
                          ],
                        ),
                      ),
                    ),
                                        SizedBox(
                width: 10,
                    ),
                    Container(
                      width: 100,
                      height: 50,
    decoration: BoxDecoration(
      color: Colors.teal,
      borderRadius: BorderRadius.all(
          Radius.circular(10)
          ),
          ),
                      child: SingleChildScrollView(
                            child: Column(
                          children: [
                    Icon(Icons.camera),
                    Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Text("Camera"),
                    ),
                          ],
                        ),
                      ),
                    ),
                                        SizedBox(
                width: 10,
                    ),
                    Container(
                      width: 100,
                      height: 50,
      decoration: BoxDecoration(
      color: Colors.teal,
      borderRadius: BorderRadius.all(
          Radius.circular(10)
          ),
          ),
                      child: SingleChildScrollView(
                            child: Column(
                          children: [
                    Icon(Icons.bike_scooter),
                    Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Text("Scooter"),
                    ),
                          ],
                        ),
                      ),
                    ),
                                        SizedBox(
                width: 10,
                    ),
                    Container(
                      width: 100,
                      height: 50,
    decoration: BoxDecoration(
      color: Colors.teal,
      borderRadius: BorderRadius.all(
          Radius.circular(10)
          ),
          ),
                      child: SingleChildScrollView(
                            child: Column(
                          children: [
                    Icon(Icons.motorcycle),
                    Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Text("MotorCycle"),
                    ),
                          ],
                        ),
                      ),
                    ),
                                        SizedBox(
                width: 10,
                    ),
                    Container(
                      width: 100,
                      height: 50,
    decoration: BoxDecoration(
      color: Colors.teal,
      borderRadius: BorderRadius.all(
          Radius.circular(10)
          ),
          ),
                      child: SingleChildScrollView(
                            child: Column(
                          children: [
                    Icon(Icons.camera_alt),
                    Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Text("Camera"),
                    ),
                          ],
                        ),
                      ),
                    ),
                                        SizedBox(
                width: 10,
                    ),
                  ],
                ),
              ),


                          Align(
              alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                child: Text(
                  "Popular Items",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
                          ),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerRight,
                          child: Container(
                child: Text(
                  "View More",
                  style: TextStyle(color: Colors.pink),
                ),
              ),
            ),
          ),





            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 50,
              mainAxisSpacing: 50,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Container(
                  // width: 200,
                  // height: 300,
                  // color: Colors.white,
                  child: Column(
                    children: [
                      Image.asset("assets/macbookair.png",height: 100,width: 150,),
                      Text("Mackbook Air"),
                      Padding(
                        padding: EdgeInsets.only(left:10.0),
                        child: SingleChildScrollView(
                          // scrollDirection: Axis.vertical,
                          scrollDirection: Axis.horizontal,
                              child: Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Text("5.0(23 Reviews)"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // width: 300,
                  // height: 300,
                  // color: Colors.yellow,
                  child: Column(
                    children: [
                      Image.asset("assets/macbookpro.png",height: 100,width: 150,),
                                            Text("Mackbook Pro"),
                      Padding(
                        padding: EdgeInsets.only(left:10.0),
                        child: SingleChildScrollView(
                          // scrollDirection: Axis.vertical,
                          scrollDirection: Axis.horizontal,
                                                  child: Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Text("5.0(23 Reviews)"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // width: 300,
                  // height: 300,
                  // color: Colors.grey,
                  child: Column(
                    children: [
                      Image.asset("assets/gamingpc.jpg",height: 100,width: 200,),
                                            Text("Gaming PC"),
                      Padding(
                        padding: EdgeInsets.only(left:10.0),
                        child: SingleChildScrollView(
                          // scrollDirection: Axis.vertical,
                          scrollDirection: Axis.horizontal,
                                                  child: Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Text("5.0(23 Reviews)"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // width: 300,
                  // height: 300,
                  // color: Colors.green,
                  child: Column(
                    children: [
                      Image.asset("assets/iphone12.jpg",height: 100,width: 150,),
                                            Text("Iphone12"),
                      Padding(
                        padding: EdgeInsets.only(left:10.0),
                        child: SingleChildScrollView(
                          // scrollDirection: Axis.vertical,
                          scrollDirection: Axis.horizontal,
                                                  child: Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Text("5.0(23 Reviews)"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // width: 300,
                  // height: 300,
                  // color: Colors.blueGrey,
                  child: Column(
                    children: [
                      Image.asset("assets/roadster.jpg",height: 100,width: 150,),
                                            Text("Roadster"),
                      Padding(
                        padding: EdgeInsets.only(left:10.0),
                        child: SingleChildScrollView(
                          // scrollDirection: Axis.vertical,
                          scrollDirection: Axis.horizontal,
                                                  child: Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Text("5.0(23 Reviews)"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // width: 300,
                  // height: 300,
                  // color: Colors.teal[900],
                  child: Column(
                    children: [
                      Image.asset("assets/royalfield.jpg",height: 100,width: 140,),
                                            Text("RoyalField"),
                      Padding(
                        padding: EdgeInsets.only(left:10.0),
                        child: SingleChildScrollView(
                          // scrollDirection: Axis.vertical,
                          scrollDirection: Axis.horizontal,
                                                  child: Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Icon(Icons.star, color: Colors.yellow,size: 13,),
                              Text("5.0(23 Reviews)"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),


      bottomNavigationBar: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
              child: Row(
          children: <Widget> [
            buildNavbarItem(Icons.home),
            buildNavbarItem(Icons.shopping_cart),
            buildNavbarItem(Icons.search),
            buildNavbarItem(Icons.addchart),
            buildNavbarItem(Icons.person),
          ],
        ),
      ),
      
    );
  }

  Container buildNavbarItem(IconData icon) {
    return Container(
          height: 30,
          width: MediaQuery.of(context).size.width/5,
          decoration: BoxDecoration(
            color: Colors.teal,
          ),
          child: Icon(icon),
        );
  }
}