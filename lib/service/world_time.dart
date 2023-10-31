import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  late String location; //顯示在介面用
  late String time; //當地時間
  late String flag; //icon
  late String url; //當地時間url
  late bool isDayTime; //是否是對的時間

  WorldTime(this.url,this.location, this.flag, );

  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      // print(data);
      // 取得個項子資料
      String dateTime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      // create DateTime object
      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(offset)));
      isDayTime = now.hour >6 && now.hour <18 ? true : false;
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('拿不到時間，$e');
      time = "發生錯誤";
    }
  }
}
