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

class MyHomePage extends StatefulWidget {//page one
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
 bool _pictureVisible = true ;

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
            child: Visibility(
              visible: _pictureVisible,
              child: Image.asset(
                'assets/images/unsplash.jpg',
                height: 400,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const ButtonGlobal(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState( () {
          _pictureVisible = !_pictureVisible;
        }
           );
          },
        tooltip: 'Change state of picture',
        child:
        _pictureVisible ? const Icon(Icons.add) : const Icon(Icons.remove),
        //child: const Icon(Icons.add_circle),
      ),

    );
  }
}


