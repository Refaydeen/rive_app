import 'package:bloc_pattern/counter/bloc/counter_bloc.dart';
import 'package:bloc_pattern/store/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter/bloc/counter_event.dart';
import 'counter/counter.dart';
// void main() {
//   // runApp(const MyApp());
//   runApp(const StoreAppCubit());
// }

import 'package:bloc_pattern/app_Observer.dart';

void main(){
  Bloc.observer=AppObserver();
  runApp(StoreApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<CounterBloc>(
        create: (context)=>CounterBloc(),
        child: MyHomePage(title: 'Bloc'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    context.read<CounterBloc>().add(CounterIncrement()) ;
  }
  void _decrementCounter() {
    context.read<CounterBloc>().add(CounterDecrement()) ;
  }
  @override
  Widget build(BuildContext context) {
    print('rebuilding the widgets');
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterBloc,int>(
              builder: (context,state){
                print('rebuilding only text');
                 return Text(
                   '$state',
                   style: Theme.of(context).textTheme.headline4,
                 );
              },
            ),

          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
