import 'package:flutter/material.dart';
import 'package:flutter_learn/service/world_time.dart';

class Choose_Location extends StatefulWidget {
  const Choose_Location({super.key});

  @override
  State<Choose_Location> createState() => _Choose_LocationState();
}

class _Choose_LocationState extends State<Choose_Location> {
  List<WorldTime> locations = [
    WorldTime('Europe/London', 'London', 'uk.png'),
    WorldTime('Europe/Berlin', 'Athens', 'greece.png'),
    WorldTime('Africa/Cairo', 'Cairo', 'egypt.png'),
    WorldTime('Africa/Nairobi', 'Nairobi', 'kenya.png'),
    WorldTime('America/Chicago', 'Chicago', 'usa.png'),
    WorldTime('America/New_York', 'New York', 'usa.png'),
    WorldTime('Asia/Seoul', 'Seoul', 'south_korea.png'),
    WorldTime('Asia/Jakarta', 'Jakarta', 'indonesia.png'),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'location': instance.location,
      'time': instance.time,
      'flag': instance.flag,
      'isDayTime': instance.isDayTime,
    });
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
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                    onTap: () {
                      updateTime(index);
                    },
                    title: Text(locations[index].location),
                    leading: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/${locations[index].flag}'),
                    )),
              ),
            );
          }),
    );
  }
}
