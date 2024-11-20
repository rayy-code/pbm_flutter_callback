import 'package:flutter/material.dart';

class CallbackAnimation extends StatefulWidget {
  const CallbackAnimation({super.key});

  @override
  State<CallbackAnimation> createState() => _CallbackAnimationState();
}

class _CallbackAnimationState extends State<CallbackAnimation>
{

  int index = 0;
  
  Color _background = Colors.blue;
  String _textColor = "Blue";

  void _changeBgColor(){
    setState(() {
      if (index == 0) {
        index+=1;
        _textColor = "pink";
        _background = Colors.pink;
      }else if(index == 1)
      {
        index+=1;
        _textColor = "limeAccent";
        _background = Colors.limeAccent;
      }else {
        index = 0;
        _textColor = "blue";
        _background = Colors.blue;
      }

    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Example", style: TextStyle(color: Colors.white),),
        backgroundColor: _background,
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          color: _background,
          width: 200,
          height: 200,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("Tap Me!", 
                  style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.white
                  ),
                ),
                const SizedBox(height: 20,),
                Text("Current colour : $_textColor",
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            )
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeBgColor,
        child: const Icon(Icons.color_lens),
      ),
    );
  }
}