import 'package:flutter/material.dart';

import '../../core/const/ui.dart';

// Linear

const gradientBlueLinear = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  stops: [0.5, 1],
  colors: UI.blueColors,
);

const gradientBlueSweep = SweepGradient(
  colors: UI.blueColors,
);

const gradientBlueRadial = RadialGradient(
  colors: UI.blueColors,
);
