// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   List<dynamic> users = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Rest API Call'),
//       ),
//       body: ListView.builder(
//         itemCount: users.length,
//         itemBuilder: (context, index) {
//           final user = users[index];
//           final name = user['name']['first'].toString();
//           final email = user['email'];
//           final imageUrl = user['picture']['thumbnail'];
//           return ListTile(
//             leading: ClipRRect(
//                 borderRadius: BorderRadius.circular(100),
//                 child: Image.network(imageUrl)),
//             // title: Text(name.toString()),
//             title: Text('${index + 1}${'. $name'}'),
//             subtitle: Text(email),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: fetchUsers,
//         child: const Text(
//           'Call API',
//           textAlign: TextAlign.center,
//         ),
//       ),
//     );
//   }

//   void fetchUsers() async {
//     print('fetchUsers Called');
//     const url = 'https://randomuser.me/api/?results=20';
//     final uri = Uri.parse(url);
//     final response = await http.get(uri);
//     final body = response.body;
//     final json = jsonDecode(body);
//     setState(() {
//       users = json['results'];
//     });
//     print('fetchUsers Completed');
//   }
// }
