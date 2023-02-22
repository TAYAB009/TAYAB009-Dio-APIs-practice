import 'package:dio/dio.dart';
import 'package:diocatapi/rand_img.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dio + APIs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isgotData = false;
  List<RandImage> catList = [];
  Future<void> callApi() async {
    Dio dio = Dio();
    final res = await dio.get('https://api.thecatapi.com/v1/images/search');

    if (res.statusCode == 200) {
      print(res.data);
      for (var singleCat in res.data) {
        RandImage randImage = RandImage.fromJson(singleCat);
        catList.add(randImage);
        print(singleCat);
      }
    } else {
      print('API was not loaded!');
    }

    setState(() {
      isgotData = true;
    });
  }

  @override
  void initState() {
    callApi().then((_) => print(catList));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mira Khan Catty APP'),
        actions: [
          IconButton(
              onPressed: () {
                callApi();
              },
              icon: const Icon(Icons.get_app))
        ],
      ),
      body: Center(
        child: isgotData
            ? ListView.builder(
                itemCount: catList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: CircleAvatar(
                      radius: 100.0,
                      backgroundImage: NetworkImage(catList[index].url),
                    ),
                    subtitle: Text(catList[index].id),
                  );
                },
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}
