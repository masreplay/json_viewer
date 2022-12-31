import 'package:flutter/material.dart';
import 'package:json_viewer/regex_type.dart';

final List<RegexType> regexTypes = [
  RegexType(
    name: "Email",
    regex: RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9\-\_]+(\.[a-zA-Z]+)*$"),
    color: const Color(0xFF751e31),
  ),
  RegexType(
    name: "JWT",
    regex: RegExp(r"^(?:[\w-]*\.){2}[\w-]*$"),
    color: const Color(0xFFa432a8),
  ),
  RegexType(
    name: "Phone Number",
    regex: RegExp(r"^\+(?:[0-9]●?){6,14}[0-9]$"),
    color: const Color(0xFFa86832),
  ),
  RegexType(
    name: "Url",
    regex: RegExp(
        r"(https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|www\.[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9]+\.[^\s]{2,}|www\.[a-zA-Z0-9]+\.[^\s]{2,})"),
    color: const Color(0xFF0a7dc4),
  ),
  RegexType(
    name: "GUID",
    regex: RegExp(
        r"^(((?=.*}$){)|((?!.*}$)))((?!.*-.*)|(?=(.*[-].*){4}))[0-9a-fA-F]{8}[-]?([0-9a-fA-F]{4}[-]?){3}[0-9a-fA-F]{12}?[}]?$"),
    color: const Color(0xFFffdc14),
  ),
  RegexType(
    name: "UUID1",
    regex: RegExp(
        r"/^[0-9A-F]{8}-[0-9A-F]{4}-[1][0-9A-F]{3}-[89AB][0-9A-F]{3}-[0-9A-F]{12}$/i"),
    color: const Color(0xFFffdc14),
  ),
  RegexType(
    name: "UUID2",
    regex: RegExp(
        r"/^[0-9A-F]{8}-[0-9A-F]{4}-[2][0-9A-F]{3}-[89AB][0-9A-F]{3}-[0-9A-F]{12}$/i"),
    color: const Color(0xFFffdc14),
  ),
  RegexType(
    name: "UUID3",
    regex: RegExp(
        r"/^[0-9A-F]{8}-[0-9A-F]{4}-[3][0-9A-F]{3}-[89AB][0-9A-F]{3}-[0-9A-F]{12}$/i"),
    color: const Color(0xFFffdc14),
  ),
  RegexType(
    name: "UUID4",
    regex: RegExp(
        r"/^[0-9A-F]{8}-[0-9A-F]{4}-[4][0-9A-F]{3}-[89AB][0-9A-F]{3}-[0-9A-F]{12}$/i"),
    color: const Color(0xFFffdc14),
  ),
  RegexType(
    name: "UUID5",
    regex: RegExp(
        r"/^[0-9A-F]{8}-[0-9A-F]{4}-[5][0-9A-F]{3}-[89AB][0-9A-F]{3}-[0-9A-F]{12}$/i"),
    color: const Color(0xFFffdc14),
  ),
  RegexType(
    name: "Username",
    regex: RegExp(r"@^(?!.*\.\.)(?!.*\.$)[^\W][\w.]{0,29}$"),
    color: const Color(0xFFffdc14),
  ),
  RegexType(
    name: "Hashtag",
    regex: RegExp(r"\B(\#[a-zA-Z]+\b)(?!;)"),
    color: const Color(0xFFffa66b),
  ),
];

// https://swagger.io/docs/specification/data-models/data-types/#:~:text=description%3A%20Can%20be%20any%20value,%2C%20boolean%2C%20array%20or%20object.

// email
// uuid
// uri
// hostname
// ipv4
// ipv6
// and others
