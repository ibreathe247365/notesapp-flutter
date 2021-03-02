import 'package:flutter/material.dart';



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
