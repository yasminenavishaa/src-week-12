import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yasmine Navisha Andhani',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';
  bool isLoading = false;

late Completer completer;

  Future getNumber() {
    completer = Completer<int>();
    calculate();
    return completer.future;
  }

/*  
  Future calculate() async {
    await Future.delayed(const Duration(seconds : 5));
    completer.complete(42);
  }
*/

  calculate() async {
    try {
      await new Future.delayed(const Duration(seconds: 5));
    completer.complete(42);

    } catch (e) {
      completer.completeError({});
    } 
  }

  Future<Response> getData() async{
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/KfbkHAAACAAJ';
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }

Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  Future count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Yasmine Navisha '),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            ElevatedButton(
              style: isLoading
                   ? ElevatedButton.styleFrom(backgroundColor: Colors.grey)
                    : null,
                child: const Text('GO!'),
                onPressed: () {
                  if (!isLoading) {
                    setState(() {
                      isLoading = true;
                    });
                    getNumber().then((value){
                      setState(() {
                        result = value.toString();
                      });
                    }).catchError((e) {
                      result = 'An error has occurred';
                    }).whenComplete(() {
                        setState(() {
                          isLoading = false;
                        });
                      });
                    }
                }),
          const Spacer(),
          Text(result),
          const Spacer(),
          if (isLoading) const CircularProgressIndicator(),
          const Spacer(),
        ]),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}