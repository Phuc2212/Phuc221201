import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My app', // used by the OS task switcher
      home: MyHomeScreen(),
    ),
  );
}

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
// SafeArea
        child: Container(
            alignment: Alignment.center,
            width: 390,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Home Screen',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 20,
                ),
                buildRowLayout(),
                SizedBox(
                  height: 20,
                ),
                Image.network(
                  "data: data:image/png;base64,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",
                  width: 220,
                ),
                Image.network(
                  "data: data:image/png;base64,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",
                  width: 220,
                ),
                Image.network(
                  "data: data:image/png;base64,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",
                  width: 220,
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Nut da duoc bam!')));
                    },
                    child: Text('Click Here!')),
              ],
            )),
      ),
    );
  }
}

Widget buildRowLayout() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        color: Colors.blue,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.green,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.orange,
        height: 100,
        width: 100,
      )
    ],
  );
}
