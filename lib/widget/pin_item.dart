import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../model/image_response.dart';
import '../screen/detail_screen.dart';

class PinItem extends StatelessWidget {
   PinItem({super.key,required this.result});
  final  Results? result;

  @override
  Widget build(BuildContext context) {
    final color =
        "0xFF${result?.color?.substring(1, result?.color?.length)}";
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailScreen(
            result: result,
          )));
        },
        child: Ink(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(int.parse(color))),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  result?.urls?.regular ?? "",
                  fit: BoxFit.cover,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const SizedBox(
                      height: 100,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  },
                ),
              ),
              const Gap(10),
              Text(
                result?.user?.name ?? "",
                style: const TextStyle(fontSize: 17, color: Colors.white),
              ),
              const Gap(5),
            ],
          ),
        ),
      ),
    );
  }
}
