import 'package:flutter/material.dart';

class ConatinerPage extends StatefulWidget {
  const ConatinerPage({super.key});

  @override
  State<ConatinerPage> createState() => _ConatinerPageState();

}

class _ConatinerPageState extends State<ConatinerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cars',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27),),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(

            icon: Icon(Icons.notifications_none),
            color: Colors.black,
            onPressed: (){

            }

          ),
          IconButton(
            onPressed: (){

            },
            icon: Icon(Icons.shopping_cart_sharp),
            color: Colors.black,
          ),
        ],
      ),
      body: ListView(
        children: [

          _itemCars(image:'assets/images/red_ferrari.jpeg',icon: Icons.favorite_border_rounded),
          _itemCars(image: 'assets/images/blue_supercar.jpeg'),
          _itemCars(image: 'assets/images/yellow_supercar.jpeg'),

          ]
      ),
    );
  }

  Widget _itemCars({image,icon}){
    return Container(
      width: double.infinity,
      height: 300,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 2),

      //color: Colors.purple,
      child:Stack(

        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),

                image:DecorationImage(
                  image: AssetImage(image),
                fit: BoxFit.cover,

                ),
              ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(0.3),
                    Colors.black.withOpacity(0.2),
                    Colors.black.withOpacity(0.1),
                  ],

                ),
              ),
            ),
            ),
          Positioned(
            left: 20,
            bottom: 220,
            child: Text('NextGen Car',style:
            TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
          ),
          Positioned(
            left: 20,
            bottom: 185,
            child: Text('Electric',style:
            TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          Positioned(
            left: 10,
            bottom: -9,
            child: Text('100\$',
              style:TextStyle(color: Colors.white,fontSize:30,fontWeight: FontWeight.bold ) ,),
          ),



          Positioned(

            right: 20,
            bottom:225,

            child:CircleAvatar(

              radius: 18,
              backgroundColor: Colors.white,
              child:
               Icon(
                Icons.favorite_border_rounded,
                size: 30,
                color: Colors.black,
            ),
          ),

          ),

        ],
      ),


    );


  }
}

