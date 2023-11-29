import 'package:flutter/material.dart';
import 'package:flutter_provider_streambuilder/provider_streambuilder/counter_streambuilder.dart';
import 'package:flutter_provider_streambuilder/provider_streambuilder/counterwidget_streambuilder.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider<CounterStreamBuilder>(create: (_) => CounterStreamBuilder())
          ],
          child: HomeScreen(),
        )
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter tutorials'),
        ),
        body: CounterWidgetStreamBuilder()
    );
  }
}
