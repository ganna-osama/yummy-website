import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/images/img.png",
                width: double.infinity,
                height: 300,
                
              ),

              Container(
                width: double.infinity,
                height: 300,
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_circle_fill,
                      color: Colors.amber,
                      size: 80,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20, left: 15),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmark_border,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dora and the lost city of gold",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),

                SizedBox(height: 5),

                Row(
                  children: [

                    Text(
                      "2019   PG-13   2h 7m",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),

                    Spacer(),

                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => ThirdScreen(),
                    //       ),
                    //     );
                    //   },
                    //   child: Container(
                    //     width: 70,
                    //     height: 40,
                    //     decoration: BoxDecoration(
                    //       color: Color(0xff4A3F3F),
                    //       borderRadius: BorderRadius.circular(12),
                    //     ),
                    //     child: Center(
                    //       child: Text(
                    //         "Add",
                    //         style: TextStyle(
                    //           color: Colors.white,
                    //           fontSize: 18,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),

                  ],
                ),
                SizedBox(height: 25),



                Text(
                  "New Releases",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 15),

                SizedBox(
                  height: 220,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Container(
                          width: 130,
                          color: Color(0xff343534),
                          child: Column(
                            children: [
                              Image.asset(
                                "images/movie1.jpg",
                                width: 130,
                                height: 170,
                                fit: BoxFit.cover,
                              ),

                              SizedBox(height: 8),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 18,
                                  ),

                                  Text(
                                    "7.5",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(height: 25),

                Text(
                  "Recommended",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 15),

                SizedBox(
                  height: 220,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Container(
                          width: 130,
                          color: Color(0xff343534),
                          child: Column(
                            children: [
                              Image.asset(
                                "images/movie2.jpg",
                                width: 130,
                                height: 170,
                                fit: BoxFit.cover,
                              ),

                              SizedBox(height: 8),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 18,
                                  ),

                                  SizedBox(width: 5),

                                  Text(
                                    "8.2",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
