import 'package:flutter/material.dart';
import 'GRDetails.dart';
import 'RSDetails.dart';

void main() => runApp(HotelList(name:''));

final grandroyal = Image.asset(
  'images/hotel2.png',
  fit: BoxFit.cover,
);

final royalsuites = Image.asset(
  'images/hotel1.png',
  fit: BoxFit.cover,
);

final logomono = Image.asset(
  'images/logobar.png',
  fit: BoxFit.cover,
);

var stars = Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, color: Colors.black,),
    Icon(Icons.star, color: Colors.black,),
    Icon(Icons.star, color: Colors.black,),
    Icon(Icons.star, color: Colors.black,),
    Icon(Icons.star, color: Colors.black,),
  ],
);

var stars2 = Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, color: Colors.black,),
    Icon(Icons.star, color: Colors.black,),
    Icon(Icons.star, color: Colors.black,),
    Icon(Icons.star, color: Colors.grey,),
    Icon(Icons.star, color: Colors.grey,),
  ],
);

class HotelList extends StatelessWidget {
  final String name;
  HotelList({Key? key,required this.name}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Cinzel',
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 100,
          title: Container(
            width: 110,
            child: logomono,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child:
                  Text('Welcome, ' + name + '!', style: TextStyle(fontSize: 18,),),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child:
                  Text('Please, choose one of our hotels.', style: TextStyle(fontSize: 18,),),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text('GRAND ROYAL',style: TextStyle(fontSize: 16,),),
                      stars,
                    ]
                ),
                royalsuites,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('C\$ 390,00',style: TextStyle(fontSize: 16,),),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailsGR(name: '')));
                      },
                      child: Text('Select Hotel'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        backgroundColor: Colors.black,
                        padding: EdgeInsets.all(10),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 60,
                  thickness: 1,
                  color: Colors.grey,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text('ROYAL SUITES',style: TextStyle(fontSize: 16,),),
                      stars2,
                    ]
                ),
                grandroyal,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('C\$ 150,00',style: TextStyle(fontSize: 16,),),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DetailsRS()));
                      },
                      child: Text('Select Hotel'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.black),
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}