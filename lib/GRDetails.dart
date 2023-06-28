import 'package:flutter/material.dart';
import 'checkout.dart';
import 'hotelList.dart';
import 'Form.dart';

void main() => runApp(DetailsGR(name: '',));



class DetailsGR extends StatefulWidget {

  final String name;

  const DetailsGR({Key? key, required this.name}) : super(key: key);

  @override
  State<DetailsGR> createState() => _DetailsGR2State();
}

class _DetailsGR2State extends State<DetailsGR> {

  int _nights = 0;

  void _incrementNights() {
    setState(() {
      _nights++;
    });
  }

  void _decrementNights() {
    setState(() {
      _nights--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 100,
          title: Container(
            child: Image.asset('images/logobar.png', scale: 3.0,),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 40.0),
                  child: Text('Excellent Choice, ', style: TextStyle(fontSize: 20.0),),
                )],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 18.0),
                  child: Icon(Icons.star),
                ),
                Container(
                  padding: EdgeInsets.only(top: 18.0,),
                  child: Icon(Icons.star),
                ),
                Container(
                  padding: EdgeInsets.only(top: 18.0),
                  child: Icon(Icons.star),
                ),
                Container(
                  padding: EdgeInsets.only(top: 18.0),
                  child: Icon(Icons.star),
                ),
                Container(
                  padding: EdgeInsets.only(top: 18.0),
                  child: Icon(Icons.star),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.only(top: 3.0),
                    child: Text('Grand Royal', style:
                    TextStyle(fontSize: 18, fontFamily: 'Cinzel'),
                    )
                )],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(

                  padding: EdgeInsets.only(top: 20.0),
                  child: Image.asset('images/hotel1.png', scale: 5.5,),
                )],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10.0, left: 35.0),
                      child:
                      Text('Number of Nights', style: TextStyle(fontSize: 18.0),),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(

                      width: 230.0,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 5.0, left: 105.0),
                                child: SizedBox(
                                  width: 35,
                                  child: ElevatedButton(onPressed: (){
                                    _decrementNights();
                                  },
                                    child: Text('-',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 40,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white70,
                                      elevation: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 5.0, left: 10.0),
                                child: SizedBox(
                                  child: Text('$_nights', style: TextStyle(fontSize: 20.0),),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 5.0,left: 0),
                                child: SizedBox(
                                  width: 35,
                                  child: ElevatedButton(onPressed: (){
                                    _incrementNights();
                                  }, child: Text('+',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                  ),
                                  ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white70,
                                      elevation: 0,
                                  ),
                                ),
                              )
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 50.0),
                  child: SizedBox(
                    width: 200,
                    child: ElevatedButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Detail1(name: 'hotel1')));
                    },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                      ),
                      child: Text('Book'),
                    ),
                  ),
                )

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10.0),
                  child: SizedBox(
                    width: 200,
                    child: ElevatedButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HotelList(name: '')));
                    },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)
                        ),

                      ),
                      child: Text('Go Back'),
                    ),
                  ),
                )

              ],
            ),
          ]),
        ),
      ),
    );
  }
}

