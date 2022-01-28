import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: DatePickerDemo(),
  ));
}

class DatePickerDemo extends StatefulWidget {
  const DatePickerDemo({Key? key}) : super(key: key);

  @override
  _DatePickerDemoState createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(selectedDate.toString()),
            MaterialButton(
              onPressed: () async {
                DateTime picked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2030)) ??
                    DateTime.now();
                setState(() {
                  selectedDate = picked;
                });
              },
              child: const Text('Click'),
            ),
          ],
        ),
      ),
    );
  }
}
