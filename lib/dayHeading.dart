import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

abstract class ListItem{}
class DayHeading extends ListItem{
  final DateTime dateTime;
  DayHeading(this.dateTime);
}
class HeadingListItem extends StatelessWidget implements ListItemWidget{
  static var _dateFormatWeekDay = DateFormat("EEEE");
  final DayHeading dayHeading;
  HeadingListItem(this.dayHeading);
  @override
  Widget build(BuildContext context){
    return ListTile(
      title: Column(
        children: [Text("${_dateFormatWeekDay.format(dayHeading.dateTime)} ${dayHeading.dateTime.day}.${dayHeading.dateTime.month}",
        style: Theme.of(context).textTheme.headline1,),
        Divider()],
      ),
    );
  }
}

class ListItemWidget {
}


