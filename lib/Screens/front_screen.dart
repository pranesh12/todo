import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class FrontScreen extends StatefulWidget {
  const FrontScreen({super.key});

  @override
  _FrontScreenState createState() => _FrontScreenState();
}

class _FrontScreenState extends State<FrontScreen> {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(counter.count.toString()),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                counter.increment();
              },
              child: Text("+")),
          const SizedBox(
            width: 12,
          ),
          TextButton(
              onPressed: () {
                counter.decrement();
              },
              child: Text("Decrease"))
        ],
      ),
    );
  }
}
