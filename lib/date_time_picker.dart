import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({super.key});

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay? selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Time Picker"),
      ),
      body: Column(children: [
        Text(
          DateFormat.yMMMMEEEEd().format(selectedDate),
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
        ),
        ElevatedButton(onPressed: (){
          showDatePicker(
              context: context,
              firstDate: DateTime.now(),
              lastDate: DateTime(2300)).then((value){
                setState(() {
                  selectedDate = value!;
                });
          });
        }, child: Text("Show Date Picker")),
        Text(
          selectedTime == null ? "No Time Selected" :
          selectedTime!.format(context).toString(),
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
        ),
        ElevatedButton(onPressed: (){
          showTimePicker(
              context: context,
              initialTime: TimeOfDay.now()).then((value){
                setState(() {
                  selectedTime = value;
                });
          });
        }, child: Text("Show Time Picker"))
      ],),
    );
  }
}
