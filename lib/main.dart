import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

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

  Future<Response> getData() async{
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/KfbkHAAACAAJ';
    Uri url = Uri.https(authority, path);
    return http.get(url);
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
                  ? ElevatedButton.styleFrom(primary: Colors.grey)
                  : null,
              child: const Text('GO!'),
              onPressed: isLoading
                  ? null
                  : () {
                      setState(() {
                        isLoading = true;
                      });
                      getData().then(
                        (value) {
                          result = value.body.toString().substring(0, 450);
                        },
                      ).catchError((_) {
                        result = 'An error has occurred';
                      }).whenComplete(() {
                        setState(() {
                          isLoading = false;
                        });
                      });
                    },
            ),
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