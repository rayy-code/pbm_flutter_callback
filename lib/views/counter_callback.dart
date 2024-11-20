import 'package:flutter/material.dart';

class CounterCallback extends StatefulWidget {
  const CounterCallback({super.key});

  @override
  State<CounterCallback> createState() => _CounterCallbackState();
}

class _CounterCallbackState extends State<CounterCallback> {

   //membuat fungsi callback yang menerima string sebagai argumen
  void showMessage(String message)
  {
    debugPrint('Message received : $message');
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold( 
      appBar: AppBar(
        title: const Text("Callback Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: (){
                showMessage("");
              },
              child: const Text("Press me"),
            )
          ],
        ),
      ),
    );
  }
}