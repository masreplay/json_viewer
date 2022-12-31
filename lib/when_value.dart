// after decode the json
R jsonWhenValue<R>(
  dynamic data, {
  required TypeChecker<R, dynamic> nullValue,
  required TypeChecker<R, num> number,
  required TypeChecker<R, Map> map,
  required TypeChecker<R, String> string,
  required TypeChecker<R, bool> boolean,
  required TypeChecker<R, List> list,
  required TypeChecker<R, dynamic> orElse,
}) {
  if (data == null) {
    // null.
    return nullValue(data);
  } else if (data is num) {
    // a number.
    return number(data);
  } else if (data is bool) {
    // a boolean.
    return boolean(data);
  } else if (data is List) {
    // an array.
    return list(data);
  } else if (data is Map) {
    // an object (JSON object)
    return map(data);
  } else if (data is String) {
    // a string.
    return string(data);
  } else {
    return orElse(data);
  }
}

typedef TypeChecker<R, T> = R Function(T value);

extension ListExtension<T> on List<T> {
  T? get firstOrNull {
    try {
      return first;
    } catch (e) {
      return null;
    }
  }
}
