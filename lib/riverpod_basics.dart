import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testediyorum/all_providers.dart';



class RiverpodBasics extends StatelessWidget {
  const RiverpodBasics({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer(builder: (context, ref, child){
          var title = ref.watch(titleProvider);
          return Text(title);
        }),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            MyText(),            
            MyCounterText(),
          ],
        ),
      ),
      floatingActionButton: const MyFloatingActionButton(),
    );
  }
}

class MyCounterText extends ConsumerWidget {
  const MyCounterText({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(ref.watch(sayacStateProvider).toString(),
              style: Theme.of(context).textTheme.headline4,
            );
  }
}
// ignore: must_be_immutable
class MyFloatingActionButton extends ConsumerWidget {
  const MyFloatingActionButton({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
        onPressed: (){
          ref.read(sayacStateProvider.state).state++;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      );
  }
}

class MyText extends ConsumerWidget {
  const MyText({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
          return Text(ref.watch(textProvider));
    }
}
