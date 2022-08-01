import 'package:flutter/cupertino.dart';

Text getHomeHeading(size, label) {
  return Text(
    label,
    style: TextStyle(fontSize: size, fontWeight: FontWeight.w700),
  );
}
