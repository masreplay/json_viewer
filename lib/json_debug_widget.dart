import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json_viewer/render_value_widget.dart';
import 'package:json_viewer/when_value.dart';

typedef JsonMap = Map<String, dynamic>;
typedef JsonMapEntry = MapEntry<String, dynamic>;

class JsonDebugWidget extends StatefulWidget {
  final JsonMap json;
  const JsonDebugWidget(this.json, {super.key});

  @override
  State<JsonDebugWidget> createState() => _JsonDebugWidgetState();
}

class _JsonDebugWidgetState extends State<JsonDebugWidget> {
  // const Color(0xff19FCFE)
  // const Color(0xff1BF88E)
  late final BoxDecoration keyDecoration = const BoxDecoration();
  late final Color keyColor = const Color(0xff00fa92);
  late final BoxDecoration valueDecoration = const BoxDecoration();
  late final Color valueColor = const Color(0xff00fdff);
  late final TextStyle? textStyle = GoogleFonts.jetBrainsMonoTextTheme()
      .titleSmall
      ?.copyWith(fontWeight: FontWeight.bold);

  late final Color childBackgroundWhenDragging = const Color(0xff3C4D55);
  late final Color separatorColor = const Color(0xff56727E);
  late final Color bracketsColor = const Color(0xff56727E);
  late final EdgeInsets padding = const EdgeInsets.all(8.0);
  late final BorderRadius borderRadius = BorderRadius.circular(8.0);

  late final BoxDecoration mapDecoration = BoxDecoration(
    border: Border.all(color: Colors.grey, width: 0.25),
    borderRadius: borderRadius,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _buildMap(widget.json),
    );
  }

  List<Widget> _buildMap(Map<String, dynamic> map) {
    return map.entries.map(_buildMapEntry).toList();
  }

  Widget _buildMapEntry(JsonMapEntry entry) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [_buildKey(entry), _buildValue(entry)],
    );
  }

  Widget _buildValue(JsonMapEntry entry) {
    final value = entry.value;
    if (value is JsonMap) {
      return Container(
        padding: padding,
        decoration: mapDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _buildMap(value),
        ),
      );
    } else if (value is List) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: value.map((childValue) {
          return _buildValue(MapEntry(entry.key, childValue));
        }).toList(),
      );
    } else {
      return RenderValueWidget(entry);
    }
  }

  Widget _buildKey(JsonMapEntry entry) {
    final isMap = entry.value is Map<String, dynamic>;

    final String value = isMap
        ? JsonEncoder.withIndent(" " * 2).convert(entry.value)
        : "$entry.value";

    final String printData = "${entry.key}: $value";

    Widget buildWidget([Decoration? decoration]) {
      return Container(
        padding: padding,
        decoration: decoration,
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: entry.key,
                style: textStyle?.copyWith(color: keyColor),
              ),
              TextSpan(
                text: ":",
                style: textStyle?.copyWith(color: separatorColor),
              )
            ],
          ),
        ),
      );
    }

    return DragTarget(
      onAccept: (JsonMapEntry? data) {
        onTypeMerge(data, entry);
      },
      builder: (BuildContext context, List<MapEntry?> candidateData,
          List<dynamic> rejectedData) {
        return InkWell(
          onTap: () {
            showBottomSheet(
              context: context,
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(entry.key),
                        IconButton(
                          onPressed: () {
                            Clipboard.setData(ClipboardData(text: printData));
                          },
                          icon: const Icon(Icons.copy_rounded),
                        )
                      ],
                    )
                  ],
                );
              },
            );
          },
          onLongPress: () {
            // TODO(masreplay): select
          },
          child: Draggable(
            data: entry,
            feedback: Directionality(
              textDirection: TextDirection.ltr,
              child: buildWidget(),
            ),
            childWhenDragging: Stack(
              children: [
                buildWidget(),
                Positioned.fill(
                  child: Container(
                    color: valueColor,
                  ),
                ),
              ],
            ),
            child: buildWidget(isMap ? mapDecoration : null),
          ),
        );
      },
    );
  }

  void onTypeMerge(JsonMapEntry? target, JsonMapEntry entry) {
    if (target == null && target == entry) return;

    void empty(dynamic data) {}

    jsonWhenValue(
      target!.value,
      nullValue: empty,
      number: (targetValue) {
        jsonWhenValue(
          entry.value,
          nullValue: empty,
          number: (num value) {
            // showNumTypeSession(target, entry);
            // ifOnOfTheValuesBetween(
            //   value,
            //   targetValue
            // );
            // final location = LatLng(latitude, longitude);
          },
          map: empty,
          string: empty,
          boolean: empty,
          list: empty,
          orElse: empty,
        );
      },
      map: empty,
      string: empty,
      boolean: empty,
      list: empty,
      orElse: empty,
    );
  }
}

void onNumberType(JsonMapEntry? target, JsonMapEntry entry) {
  bool isLatitude(JsonMapEntry entry) {
    return ["latitude", "lat"].contains(entry.key.toLowerCase()) ||
        (entry.value < 90 && entry.value > -90);
  }

  bool isLongitude(JsonMapEntry entry) {
    return ["longitude", "lng", "lang", "long"]
            .contains(entry.key.toLowerCase()) ||
        (entry.value < 180 && entry.value > -180);
  }

  if (isLatitude(entry) || !isLongitude(entry)) {}

  if (isLatitude(entry)) {}
}
