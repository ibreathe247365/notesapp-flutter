import 'package:flutter/material.dart';

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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("hello"),),
    body: Column(children: <Widget>[TextInputWidget(),Text(this.text)],),);
  }
}

// class TextWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text("Hello world!");
//   }
// }

class TextInputWidget extends StatefulWidget {
  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();
  // String text = "bla";

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

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

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: this.controller,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.message),
          labelText: "Type a message",
          suffixIcon: IconButton(
              icon: Icon(Icons.send),
              splashColor: Colors.red,
              tooltip: "Post message",
              onPressed: null)),
    );
  }
}
