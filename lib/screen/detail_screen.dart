import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../model/image_response.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.result});
  final Results? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(6.0),
          child: InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () => Navigator.of(context).pop(),
            child: Ink(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black45,
              ),
              child: Icon(CupertinoIcons.back, color: Colors.white,),
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz,color: Colors.white,))
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(result?.urls?.regular ?? "",fit: BoxFit.cover,),
            const Gap(20),
            Padding(padding: EdgeInsets.all(20),child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    foregroundImage: NetworkImage(
                        result?.user?.profileImage?.medium ?? ""
                    ),
                  ),
                  title: Text( result?.user?.name ?? ""),
                  subtitle: Text("${result?.user?.totalLikes ?? 0} followers"),
                )
              ],
            ),)
          ],
        ),
      ),
    );
  }
}