import 'package:flutter/material.dart';
import 'package:pinterest/service/repository.dart';

import '../model/user_response.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen({super.key});

  final _repo = Repository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: FutureBuilder(
        future: _repo.getUser(''),
        builder: (context, snapshot) {
          if(snapshot.data != null) {
            return _successField(snapshot.data);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
  Widget _successField(UserResponse? user) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            foregroundImage: NetworkImage(user?.profileImage?.large ?? "iftixor ergashboev"),
            radius: 60,
          ),
          const SizedBox(height: 20,),
          Text(user?.name ?? "", style: TextStyle(fontSize: 25, color: Colors.black)),
          const SizedBox(height: 10,),
          Text(user?.followingCount?.toString() ?? "")
        ],
      ),
    );
  }
}
