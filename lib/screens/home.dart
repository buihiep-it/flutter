import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/user.dart';
import 'package:flutter_application_3/services/user_api.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rest API Call'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          final avatar = user.avatar.thumbnail;
          final color = user.gender == 'male' ? Colors.yellow : Colors.green;
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(avatar),
            ),
            title: Text('${index + 1}. ${user.fullName}'),
            subtitle: Text('${user.phone} - ${user.email}'),
            tileColor: color,
          );
        },
      ),
    );
  }

  Future<void> fetchUsers() async {
    final response = await UserApi.fetchUsers();
    setState(() {
      users = response;
    });
  }
}
