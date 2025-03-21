import 'package:flutter/widgets.dart';

extension size on int {
  SizedBox get width => SizedBox(
        width: this.toDouble(),
      );

  SizedBox get height => SizedBox(
        height: this.toDouble(),
      );
}
