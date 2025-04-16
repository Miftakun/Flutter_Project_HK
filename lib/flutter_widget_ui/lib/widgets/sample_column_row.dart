import 'package:flutter/material.dart';

class SampleColumnRow extends StatelessWidget {
  const SampleColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Belajar Container')),
      body:
      // Column(
      //   children: const <Widget>[
      //     Text('Deliver features faster'),
      //     Text('Craft beautiful UIs'),
      //     Expanded(child: FittedBox(child: FlutterLogo())),
      //   ],
      // ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 50, color: Colors.blue),
                const SizedBox(width: 16),
                Container(width: 50, color: Colors.red),
              ],
            ),
          ),
          Container(width: 50, height: 50, color: Colors.green),
          Container(width: 50, height: 50, color: Colors.red),
          Container(width: 50, height: 50, color: Colors.yellow),
          Container(width: 50, height: 50, color: Colors.grey),
        ],
      ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Container(
      //       width: 50,
      //       height: 50,
      //       padding: EdgeInsets.all(20),
      //       color: Colors.green,
      //     ),
      //     Container(
      //       width: 50,
      //       height: 50,
      //       padding: EdgeInsets.all(20),
      //       color: Colors.red,
      //     ),
      //     Container(
      //       width: 50,
      //       height: 50,
      //       padding: EdgeInsets.all(20),
      //       color: Colors.yellow,
      //     ),
      //     Container(
      //       width: 50,
      //       height: 50,
      //       padding: EdgeInsets.all(20),
      //       color: Colors.grey,
      //     ),
      //   ],
      // ),
      // const Row(
      //   children: <Widget>[
      //     Expanded(
      //       child: Text('Deliver features faster', textAlign: TextAlign.center),
      //     ),
      //     Expanded(
      //       child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
      //     ),
      //     Expanded(child: FittedBox(child: FlutterLogo())),
      //   ],
      // ),
    );
  }
}
