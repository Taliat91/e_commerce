// ignore: unused_import
import 'package:e_commerce/pages/bottom_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: non_constant_identifier_names
  List<Color> Clrs = [
    Color.fromARGB(255, 246, 111, 58),
    Color.fromARGB(255, 36, 131, 233),
    // Color.fromARGB(255, 63, 208, 143),
  ];

  // var imageList = [
  //  "lib/images/handbag01.png",
  //   "lib/images/apple smart watch 01.png",
  //   // "lib/images/head phone 05.png",
  // ];
  
  // var iconImageList = [
  //  "lib/images/vector t shirt.png",
  //  "lib/images/vector bag.png",
  //  "lib/images/vector google glass.png",
  //  "lib/images/vector shoe.png",
  //  "lib/images/sneakers.png",

  // ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
    
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(12)
                ),
                padding: EdgeInsets.all(12),
                child: Icon(Icons.menu)), 
        
                Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(12)
                ),
                padding: EdgeInsets.all(12),
                child: Icon(Icons.search)), 
              ],
            ),

            SizedBox(height: 10,),
            Text('Hello Taliat', style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),),

            
            SizedBox(height: 5,),
            Text('Lets shop something!', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal
            ),),
           
           SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  
                  // for (int i =0; i<3; i++)
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.only(left: 10),
                    height: MediaQuery.of(context).size.height/4,
                    width: MediaQuery.of(context).size.width/1,
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                       
                        Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                        Text('30% of winter\nCollection', 
                        style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.white
                        ),),
                        Container(
                          // height: 9,
                          width: 100,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Text('Get Now', style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 19,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Image.asset('assets/image/head phone 05.png'),
                        )
                         ],
                        ),
                        


                      ],
                    ),
                  ) 


                ],
              ),
            )

          ],
        
        ),
        
      ),
       
    

    ),
    );
    
  }
}