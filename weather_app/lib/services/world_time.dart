import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
class WorldTime{

  String location;// location name for the UI
  String time; // time in that location
  String flag; //url to asset flag icon
  String url; // the location url we want to attach with the url to get different time for api endpoint
  bool isDaytime; // true or false if daytime or not
  WorldTime({this.location, this.flag, this.url, this.isDaytime});

  Future<void> getTime() async {

    try {
      //make request
      Response response =await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      //print(data);

      // get properties from data
      // getting the time and offset to add and get the actual time
      String datetime = data['datetime'];
      String offset = data ['utc_offset'].substring(1,3);
      String sign = data['utc_offset'].substring(0,1);
      //print(datetime);
      print(offset);
      print(sign);
      print(data['utc_offset']);

      // create a datetime object
      DateTime now = DateTime.parse(datetime);

      sign == '+' ? now = now.add(Duration(hours: int.parse(offset))) : now = now.subtract(Duration(hours: int.parse(offset)));
      
      // set the time property
      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);

    }
    catch(e){
      print('caught error: $e');
      time ='could not get time data';
    }

  }

}
