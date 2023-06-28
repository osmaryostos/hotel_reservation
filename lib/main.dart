import 'package:flutter/material.dart';
import 'Form.dart';


void main() {
  runApp(const LandingPage());
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Image.asset('assets/images/Logo Royal - Color-2.png', scale: 1.5,),
      ),
              Builder(
                  builder: (context) {
                    return SizedBox(
                        width: 180,
                        child: ElevatedButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage()));
                        },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)
                                )
                            ),
                            child: Text('Make a Reservation'))
                    );
                  }
                  ),
              // SizedBox(
              //     width: 180,
              //     child: ElevatedButton(onPressed: (){
              //       Navigator.of(context).push(MaterialPageRoute(builder: (context) => WelcomePage()));
              //     },
              //         style: ElevatedButton.styleFrom(
              //             primary: Colors.black,
              //             shape: RoundedRectangleBorder(
              //                 borderRadius: BorderRadius.circular(20.0)
              //             )
              //         ),
              //         child: Text('Make a Reservation'))
              // )
            ]
    ),
    ),
    )
    );
  }
}