import 'package:contacts_login/main.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(Detail1(name:''));
}

class Detail1 extends StatelessWidget {
  final String name;
  double price=0, tax =0, total= 0;
  Detail1({Key? key,required this.name}) : super(key: key);   

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GRAND HOTEL',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(name:this.name),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String name;
  double price=0, tax =0, total= 0;
  MyHomePage({Key? key,required this.name}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
     String title;
     String image1;
    if (name == 'hotel1') { 
     image1='hotel1.png';
     title='GRAND HOTEL';
     price=780;
     tax =117;
   } else { 
     image1='hotel2.png';
     title='LUXURY HOTEL';
     price=880;
     tax =177;
   } 
   total = price + tax;
   return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Image.asset(
        'images/logobar.png',
        scale: 4,
      ),
      const SizedBox(
        width: 18,
      ),
    ],
  ),
),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Container(
                   padding: EdgeInsets.only(top: 40.0, bottom: 50.0),
                  child: 
                const Text(
                    'CHECKOUT',
                    style: TextStyle(fontSize: 20, fontFamily: 'Cinzel' ),
                  )),
              ],
             ),
            Row(
        
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                   padding: EdgeInsets.only(bottom: 10.0, left: 30.0),
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 20, fontFamily: 'Cinzel' ),
                  ),
                ),
                 Container(
                   padding: EdgeInsets.only(bottom: 10.0, left: 80.0),
                  child: MyWidgetRating(),
            )],
            ),
            Row(
             mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 Container(
                   padding: EdgeInsets.zero,
                   
                child: Image(
                  image: AssetImage('images/$image1'),
            
                  height: 200,),
                 )
              ],
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: <Widget>[
                 Column(
                  
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                     Container(
                        decoration: const BoxDecoration(
                        border: Border(
                          right: BorderSide( //                   <--- left side
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        
                        ),
                      ),
                      padding: EdgeInsets.only(left: 30.0, right: 42.0),
                      child: 
                      RichText(
                      text: TextSpan(
                        text: '+ C\$ $price',
                        style: const TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                        children: const <TextSpan>[
                          TextSpan(text: '/ 2 Nights ', style: TextStyle( fontWeight: FontWeight.normal)),
                        ],
                      ),
                    )
                     ),
                   Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          right: BorderSide( //                   <--- left side
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        
                        ),
                      ),
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 30.0, right: 40.0),
                      child:  RichText(
                      text: TextSpan(
                        text: '+ C\$ $tax',
                        style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                        children: const <TextSpan>[
                          TextSpan(text: '/ Tax(15%)', style: TextStyle( fontWeight: FontWeight.normal)),
                        ],
                      ),
                    )
              ),
                   ]),
               Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   Container(
                      padding: EdgeInsets.only( top: 10.0, left: 40.0),
                      child:
                      RichText(
                      text: const TextSpan(
                        text: 'TOTAL ',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(text: 'C\$ 897', style: TextStyle( fontWeight: FontWeight.bold)),
                        ],
                      ),
                    )
               
                     ), 
                  Container(
                      padding: EdgeInsets.only( top: 10.0, left: 40.0),
                      child:      
                        FilledButton(
                        onPressed: (){
                         // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyApp()));
                         },
                        
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
                          foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),            
                      ),
                        child: const Text("   Book Now   "))
                  ),
             ])
            ],
          ),
        //  ProgressBar(),
        ],
        ),
      ),
    );
  }

}

class MyWidgetRating  extends StatelessWidget {
  const MyWidgetRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.black, size: 20.0,),
        Icon(Icons.star, color: Colors.black,  size: 20.0,),
        Icon(Icons.star, color: Colors.black,  size: 20.0,),
        Icon(Icons.star, color: Colors.black , size: 20.0,),
        Icon(Icons.star, color: Colors.black,  size: 20.0,),

      ],
    );
  } 
}

// class ProgressBar extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _ProgressState();
//   }
// }

// class _ProgressState extends State<ProgressBar> {
//   int _count = 50;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Container(
//             padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
//             decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 192, 178, 178),
//                 borderRadius: BorderRadius.circular(10)),
//             child: Row(children: <Widget>[
//               IconButton(
//                 icon: const Icon(Icons.add),
//                 onPressed: () {
//                   setState(() {
//                     _count += 1;
//                   });
//                 },
//               ),
//               Text(_count.toString()),
//               IconButton(
//                 icon: const Icon(Icons.remove),
//                 onPressed: () {
//                   setState(() {
//                     _count -= 1;
//                   });
//                 },
//               ),
//             ])),
//       ],
//     );
//   }
//   }



  