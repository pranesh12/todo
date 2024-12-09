import 'package:flutter/material.dart';

class Paly extends StatefulWidget {
  const Paly({Key? key}) : super(key: key);

  @override
  _PalyState createState() => _PalyState();
}

class _PalyState extends State<Paly> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text("Playground"),
          ElevatedButton(
              onPressed: () async {
                DateTime? pickdate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2030));
                if (pickdate != null) {
                  print(pickdate);
                }
              },
              child: const Text("Pick a date")),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
              onPressed: () async {
                TimeOfDay? time = await showTimePicker(
                    context: context, initialTime: TimeOfDay.now());
                if (time != null) {
                  print(time);
                }
              },
              child: const Text("Pick time"))
        ],
      ),
    );
  }
}
