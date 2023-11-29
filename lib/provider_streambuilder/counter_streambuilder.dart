import 'dart:async';
import 'package:flutter/widgets.dart';

class CounterStreamBuilder extends ChangeNotifier {
  int _count = 0;
  final StreamController<int> _controller = StreamController<int>();

  Stream<int> get stream => _controller.stream;

  int get count => _count;

  void increment() {
    _count++;
    _controller.sink.add(_count);
  }

  void decrement() {
    _count--;
    _controller.sink.add(_count);
  }

  void dispose() {
    _controller.close();
  }
}
