import 'package:flutter/material.dart';
import 'package:turning_page/views/circle_view.dart';

////THIS IS THE BUTTON THAT LEADS TO THE CIRCLE PAGE

class ButtonGlobalTwo extends StatelessWidget {
  const ButtonGlobalTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //go to next page
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const CircleView()));
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 9,
            ),
          ],
        ),
        child: const Text(
          'circle page',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
