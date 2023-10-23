import 'package:flutter/material.dart';

class Choose_Location extends StatefulWidget {
  const Choose_Location({super.key});

  @override
  State<Choose_Location> createState() => _Choose_LocationState();
}

class _Choose_LocationState extends State<Choose_Location> {
  int counter = 0;
  void getData() async {
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'WeiBo';
    });

    String testWord = await Future.delayed(Duration(seconds: 2), () {
      return 'hello';
    });
    print('$username $testWord');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    print('initstate function run');
  }

  @override
  Widget build(BuildContext context) {
    print('build function run');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Choose Location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          child: Text('test: $counter')),
    );
  }
}
