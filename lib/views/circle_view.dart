import 'package:flutter/material.dart';

class CircleView extends StatelessWidget {
  const CircleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      //nothing to see here
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 55),
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                      // image: DecorationImage(
                      //   fit: BoxFit.cover,
                      //   Image.asset(
                      //     'assets/unsplash.jpg',
                      //     height: 400,
                      //     fit: BoxFit.cover,
                      //   ), image: null,
                      // ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
