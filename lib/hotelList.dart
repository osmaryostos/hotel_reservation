import 'package:flutter/material.dart';
import 'RSDetails.dart';
import 'GRDetails.dart';

void main() => runApp(HotelList(name: '',));

final grandroyal = Image.asset(
  'images/grandroyal.png',
  fit: BoxFit.cover,
);

final royalsuites = Image.asset(
  'images/royalsuites.png',
  fit: BoxFit.cover,
);

final logomono = Image.asset(
  'images/logomono.png',
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

  const HotelList({Key? key, required this.name}) : super(key: key);
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Welcome, $name'),
            Text('Please, choose one of our hotels.'),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text('GRAND ROYAL'),
                  stars,
                ]
            ),
            royalsuites,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('C\$ 390,00'),
                ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DetailsGR(name: '',)));
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
            Text(' '),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text('ROYAL SUITES'),
                  stars2,
                ]
            ),
            grandroyal,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('C\$ 150,00'),
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
    );


  }
}