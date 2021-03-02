import 'package:flutter/material.dart';
import 'MyHomePage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notesapp',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}



//REDUNDANT CODE




// class MyHomePage extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text("Hello World!")),
//         //       body: Column(
//         //           children: <Widget>[TextWidget(), TextWidget(), TextWidget()]));
//         //
//         body: TextInputWidget());
//   }
// }


// class TextWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text("Hello world!");
//   }
// }

//   void changeText(text) {
//     if (text == "Hello World!") {
//       controller.clear();
//       text = "";
//     }
//     setState(() {
//       this.text = text;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(children: <Widget>[
//       TextField(
//           controller: this.controller,
//           decoration: InputDecoration(
//               prefixIcon: Icon(Icons.message), labelText: "Type a message"),
//           onChanged: (text) => this.changeText(text)),
//       Text(this.text)
//     ]);
//   }
