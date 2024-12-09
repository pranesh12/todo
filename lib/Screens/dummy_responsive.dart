import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/responsiveness.dart';

class DummyResponsive extends StatefulWidget {
  const DummyResponsive({Key? key}) : super(key: key);

  @override
  _DummyResponsiveState createState() => _DummyResponsiveState();
}

class _DummyResponsiveState extends State<DummyResponsive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive layout"),
      ),
      body: const SafeArea(
        child: ResponsiveWidget(
            mobile: Column(
              children: [
                NewWidget(),
                SizedBox(
                  height: 20,
                ),
                BuildText()
              ],
            ),
            tablet: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NewWidget(),
                SizedBox(
                  width: 12,
                ),
                Expanded(child: BuildText())
              ],
            )),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 320,
          height: 180,
          color: Colors.red,
        ),
      ],
    );
  }
}

class BuildText extends StatelessWidget {
  const BuildText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchang Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only f");
  }
}
