import 'package:flutter/material.dart';

class StringCallback extends StatelessWidget{
  const StringCallback({super.key});

  void _showMessage(String message)
  {
    debugPrint('Message Received : $message');
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Example Callback"),
      ),
      body: Center(
        child:  Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: (){
                _showMessage("Button Pressed");
              }, 
              child: const Text("Press Me"),
            )
          ],
        ),
      ),
    );
  }
}