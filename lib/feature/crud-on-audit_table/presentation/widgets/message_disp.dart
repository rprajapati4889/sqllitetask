import 'package:flutter/cupertino.dart';

class MessageDisplay extends StatelessWidget {
  final String message;

  const MessageDisplay({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Text(
          message,
          style: TextStyle(fontSize:20),
      ),
    ),
    );
  }
}
