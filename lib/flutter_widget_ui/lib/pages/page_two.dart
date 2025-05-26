// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  final String text;
  const PageTwo({super.key, required this.text});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  late DateTime selectedDate;
  late TimeOfDay selectedTime;

  void _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
    selectedTime = TimeOfDay.now(); // Initialize with current time
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page Two & DateTime Picker')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // _selectDate(context);
            _selectTime(context);
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //const Text('Select Dtae'),
              //Text(selectedDate.toLocal().toString().split(' ')[0]),
              const Text('Select Time'),
              Text(
                '${selectedTime.hour.toString().padLeft(2, '0')}:${selectedTime.minute.toString().padLeft(2, '0')}',
                style: const TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
