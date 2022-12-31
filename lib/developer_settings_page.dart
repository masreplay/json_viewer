import 'package:flutter/material.dart';
import 'package:json_viewer/data.dart';
import 'package:json_viewer/json_debug_widget.dart';
import 'package:json_viewer/data.txt';

class DeveloperSettingsPage extends StatefulWidget {
  const DeveloperSettingsPage({super.key});

  @override
  State<DeveloperSettingsPage> createState() => _DeveloperSettingsPageState();
}

class _DeveloperSettingsPageState extends State<DeveloperSettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: const Color(0xff1F292E),
        appBar: AppBar(
          title: const Text("Developer settings"),
          backgroundColor: const Color(0xff3C4D55),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...[data].map(JsonDebugWidget.new).toList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
