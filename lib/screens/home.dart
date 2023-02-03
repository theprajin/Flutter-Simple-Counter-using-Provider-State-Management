import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter/models/counter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Counter>(context, listen: true).value;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              style: TextStyle(fontSize: 17),
              'You have pressed button this many times:',
            ),
            //This is an alternative
            // Consumer<Counter>(
            //   builder: (context, counter, child) {
            //     return Text(
            //       style: const TextStyle(fontSize: 30),
            //       '${counter.value}',
            //     );
            //   },
            // ),
            Text(
              '$counter',
              style: const TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //This is an alternative
          // var counter = context.read<Counter>();
          // counter.increment();

          Provider.of<Counter>(context, listen: false).increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
