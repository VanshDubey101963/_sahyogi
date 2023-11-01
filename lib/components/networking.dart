import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<dynamic> fetchData() async {
  String apiUrl =
      "https://irctc1.p.rapidapi.com/api/v3/getPNRStatus?pnrNumber=4156522916";
  final Map<String, String> headers = {
    "X-Rapidapi-Key": "d941e28215msh4fe71648c8af35fp17d082jsnd31f2a774156",
    "X-Rapidapi-Host": "irctc1.p.rapidapi.com",
  };

  final response = await http.get(Uri.parse(apiUrl), headers: headers);

  if (response.statusCode == 200) {
    dynamic res = jsonDecode(response.body);
    print(res);
    return res;
    // print('data: ${res['status']}');
    // print("API Response: ${response.body}");
    // Handle the response data as needed
  } else {
    throw Exception('Error : try agian later');
    // Handle the error condition
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('API Integration in Dart'),
        ),
        body: Column(
          children: [
            FutureBuilder(
                future: fetchData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasData) {
                    return Text('${snapshot.data['message']}');
                  } else {
                    return const Text('Error: 101');
                  }
                }),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  fetchData();
                },
                child: Text('Fetch Data'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
