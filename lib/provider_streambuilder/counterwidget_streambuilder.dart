import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_streambuilder.dart';

class CounterWidgetStreamBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterStreamBuilder>(context);
    print('Counter = ${counter.count}');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Counter Value:',
            style: TextStyle(fontSize: 20),
          ),
          StreamBuilder<int>(
            stream: counter.stream,
            initialData: counter.count,
            builder: (context, snapshot) {
              return Text(
                '${snapshot.data}',
                style: const TextStyle(fontSize: 40),
              );
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              counter.increment();
              print('Increment Counter = ${counter.count}');
            },
            child: const Text('Increment'),
          ),
          ElevatedButton(
            onPressed: () {
              counter.decrement();
              print('Decrement Counter = ${counter.count}');
            },
            child: const Text('Decrement'),
          ),
        ],
      ),
    );
  }
}
