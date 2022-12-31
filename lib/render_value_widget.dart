import 'dart:math';

import 'package:flutter/material.dart';
import 'package:json_viewer/json_debug_widget.dart';
import 'package:json_viewer/types.dart';
import 'package:json_viewer/when_value.dart';

class RenderValueWidget extends StatelessWidget {
  final JsonMapEntry entry;

  const RenderValueWidget(this.entry, {super.key});
  @override
  Widget build(BuildContext context) {
    const int maxStringLength = 12;

    final TextStyle textStyle = Theme.of(context)
        .textTheme
        .titleSmall!
        .copyWith(fontWeight: FontWeight.bold);

    return jsonWhenValue<Widget>(
      entry.value,
      nullValue: (value) {
        return _buildWidget(
          value,
          "$value",
          style: textStyle.copyWith(color: Colors.red),
          onPressed: null,
        );
      },
      map: (value) {
        return _buildWidget(
          value,
          "$value",
          style: textStyle.copyWith(color: Colors.red),
          onPressed: null,
        );
      },
      number: (value) {
        if (value is double) {
          return _buildWidget(
            value,
            "$value",
            style: textStyle.copyWith(color: const Color(0xff7DB4F9)),
            onPressed: null,
          );
        } else {
          return _buildWidget(
            value,
            "$value",
            style: textStyle.copyWith(color: const Color(0xFF9A1E60)),
            onPressed: null,
          );
        }
      },
      boolean: (value) {
        return _buildWidget(
          value,
          "$value",
          style: textStyle.copyWith(color: Colors.orange),
          onPressed: null,
        );
      },
      list: (value) {
        return value.isEmpty
            ? Text("$value")
            : Column(
                mainAxisSize: MainAxisSize.min,
                children: value.map((e) => Text(e)).toList(),
              );
      },
      string: (value) {
        if (DateTime.tryParse(value) != null) {
          return _buildWidget(
            value,
            value,
            style: textStyle.copyWith(color: Colors.green),
            onPressed: null,
          );
        }

        for (var element in regexTypes) {
          if (element.regex.hasMatch(value)) {
            final newValue = value.length > maxStringLength
                ? "${value.substring(0, min(value.length, maxStringLength))}..."
                : value;
            return _buildWidget(
              value,
              "${element.name}( '$newValue' )",
              style: textStyle.copyWith(
                color: element.color == null ? Colors.green : element.color!,
              ),
              onPressed: null,
            );
          }
        }

        return _buildWidget(
          value,
          value,
          style: textStyle,
          onPressed: null,
        );
      },
      orElse: (value) {
        return const SizedBox.shrink();
      },
    );
  }

  Widget _buildWidget<T>(dynamic data, String value,
      {required TextStyle style, required VoidCallback? onPressed}) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          value.toString(),
          style: style.copyWith(color: const Color(0xff1BF88E)),
        ),
      ),
    );
  }
}
