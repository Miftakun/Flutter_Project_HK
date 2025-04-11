//Widgets Basic
import 'package:flutter/material.dart';

//  StatefulWidget adalah widget yang dapat berubah seiring waktu
//  StatelessWidget adalah widget yang tidak dapat berubah seiring waktu
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String label = 'hello world';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                label = 'ganti nama';
              });
            },
            child: Text('ini button', style: TextStyle(fontSize: 24)),
          ),
          Center(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 46,
                color: Colors.red,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
      //appbar: ,
      //body: ,
      //bottomNavigationBar: ,
    );
  }
}
