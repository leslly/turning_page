import 'package:flutter/material.dart';
import 'package:turning_page/views/widgets/button_global_two.dart';

class ClicksView extends StatelessWidget {
  const ClicksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.add_alert,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: const [
                      ///// BUTTONN
                      Expanded(child: ButtonGlobalTwo()),
                      SizedBox(width: 10),
                      Expanded(child: ButtonGlobalTwo()),
                      SizedBox(width: 10),
                      Expanded(child: ButtonGlobalTwo()),
                      SizedBox(width: 10),
                      Expanded(child: ButtonGlobalTwo()),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Divider(
                  height: 50,
                  thickness: 30,
                  color: Colors.red,
                  indent: 10,
                  endIndent: 10,
                ),
                const SizedBox(height: 20),
                Column(
                  children: const [
                    ButtonGlobalTwo(),
                    SizedBox(height: 30),
                    ButtonGlobalTwo(),
                    SizedBox(height: 30),
                    ButtonGlobalTwo(),
                    SizedBox(height: 30),
                    ButtonGlobalTwo(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
