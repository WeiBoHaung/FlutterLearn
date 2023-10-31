import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learn/service/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  Future<void> setupWorldTime() async {
    WorldTime instance = WorldTime( "Asia/Taipei","Taipei", "germany.png",);
    await instance.getTime();
    Navigator.pushReplacementNamed(context, "/home", arguments: {
      'location': instance.location,
      'time': instance.time,
      'flag': instance.flag,
      'isDayTime': instance.isDayTime,
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Center(
          child: SpinKitRotatingCircle(
            color: Colors.white,
            size: 50.0,
          ),
        ),
      ),
    );
  }
}
