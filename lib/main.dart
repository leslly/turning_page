import 'package:flutter/material.dart';
import 'package:turning_page/views/widgets/button_global.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Leslie'),
    );
  }
}
// this is the start of the stateful widget
class MyHomePage extends StatefulWidget {//page one
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
 bool _pictureVisible = true ;
  
  // A boolean variable is creates to help toggle between a visible picture 
  // and when the picture is hidden

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Center(
            
            // the visibility widget is responsible hiding and showing the pictue
            
            child: Visibility(
              
              // the visibility widget has an attribut visible 
              // and here the picture is currently visible since the bool value is set to true
              
              visible: _pictureVisible,
              child: Image.asset(
                'assets/images/unsplash.jpg',
                height: 400,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          
          // this is a button that leads to the next page
          // it is named button global cause it was created in a file 
          // and imported here as a function
          
          const ButtonGlobal(),
        ],
      ),
      // thimgs like the floating action button and visibility widget can only work in a stateful widget
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // when the floating action button is pressed the picture 
          // moves from being visible to not visible - the boolean value is now fale
          // and in the visible attribute inside the visibility widget it is also false
          // and the picture is no more visible, hidden .
          setState( () {
          _pictureVisible = !_pictureVisible;
        }
           );
          },
        tooltip: 'Change state of picture',
        child:
        _pictureVisible ? const Icon(Icons.add) : const Icon(Icons.remove),
        /* this is a tenary operator in simple terms the short form of an 
        * conditional statement . it says, _pictureVisible has add icon else 
        * (that is when picture is not visible) it has removal icon
        */
        //child: const Icon(Icons.add_circle),
      ),

    );
  }
}


