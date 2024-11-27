import 'package:flutter/material.dart';

class CounterService {
  int counterValue = 0;

  addCounterValue() {
    counterValue++;
    debugPrint("COUNTER VALUE:$counterValue");
  }
}
