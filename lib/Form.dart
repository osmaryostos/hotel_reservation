import 'package:flutter/material.dart';
import 'checkout.dart';
import 'GRDetails.dart';
import 'RSDetails.dart';


void main() {
 runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Second Page',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const SecondPage(),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<SecondPage> {
  //Needs final?
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  //TextEditingController _phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Image.asset('assets/images/Logo Royal - Color-2.png', scale: 1.5,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter your Name'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _email,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter your Email'
                  ),
                ),
              ),
              SizedBox(
                  width: 150,
                  child: ElevatedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DetailsRS()));
                  },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)
                          )
                      ),
                      child: Text('Submit'))
              )
            ],
          )
      ),
    );
  }
}

class WelcomePage extends StatelessWidget {
  String name,email;
  WelcomePage({Key? key,required this.name,required this.email}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),
      body: Center(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name: $name'),
              Text('Email: $email'),
              //Text('Phone: $phone'),
            ],
          ),
        ),
      ),
    );
  }
}