import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PickerDateAndTimeScreen extends StatefulWidget {
  const PickerDateAndTimeScreen({Key? key}) : super(key: key);

  @override
  State<PickerDateAndTimeScreen> createState() =>
      _PickerDateAndTimeScreenState();
}

class _PickerDateAndTimeScreenState extends State<PickerDateAndTimeScreen> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  String get selectedDateVal {
    if (selectedDate == null) {
      return 'Please select a date';
    }
    return DateFormat.yMMMMEEEEd().format(selectedDate!);
  }

  String get selectedTimeVal {
    if (selectedTime == null) {
      return 'Please select a time';
    }
    return selectedTime!.format(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Picker Date & Time'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(selectedDateVal),
            ElevatedButton(
              onPressed: () {
                showDialogDatePicker(context);
              },
              child: const Text('Pick Date'),
            ),
            const SizedBox(height: 16),
            Text(selectedTimeVal),
            ElevatedButton(
              onPressed: () {
                showDialogTimePicker(context);
              },
              child: const Text('Pick Time'),
            ),
          ],
        ),
      ),
    );
  }

  void showDialogDatePicker(BuildContext context) async {
    selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2050),
    );
    if (selectedDate != null) {
      setState(() {});
    }
  }

  void showDialogTimePicker(BuildContext context) async {
    selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      setState(() {});
    }
  }
}
