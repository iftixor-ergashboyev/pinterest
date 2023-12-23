import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:pinterest/widget/pin_item.dart';

import '../model/image_response.dart';
import '../service/repository.dart';
import 'detail_screen.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _repo = Repository();

  final _categories = ['All', 'Football', 'Love', 'Nature', 'Food', 'Car'];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: PreferredSize(
              preferredSize: const Size.fromHeight(50.0),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: _categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIndex = index;
                          });
                        },
                        child: Chip(
                          label: Text(_categories[index]),
                          backgroundColor: _selectedIndex == index ? Colors.greenAccent.shade200 : Colors.transparent,
                        )),
                  ),
                ),
              )),
        ),
        body: FutureBuilder(
          future: _repo.getImageList(_categories[_selectedIndex]),
          builder: (context, snapshot) {
            if (snapshot.data != null && snapshot.data?.isNotEmpty == true) {
              return MasonryGridView.builder(
                gridDelegate:
                const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return PinItem(result: snapshot.data?[index]);
                },
              );
            } else if (snapshot.connectionState == ConnectionState.done &&
                snapshot.data?.isEmpty == true) {
              return const Center(child: Icon(CupertinoIcons.alarm_fill));
            } else {
              return const Center(
                child: SpinKitFadingCircle(color: Colors.black),
              );
            }
          },
        ));
  }
}