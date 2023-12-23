import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/collection_response.dart';
import '../service/repository.dart';
import 'image_search_screen.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final TextEditingController _searchController = TextEditingController();
  final _repo = Repository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Padding(
          padding: const EdgeInsets.only(top: 20,left: 16,right: 16,bottom: 12),
          child: TextField(
            readOnly: true,
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ImageSearchScreen(query: '')));
            },
            controller: _searchController,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top:12,left: 8,right: 16,bottom: 12),
                filled: true,
                hintText: 'Search ideas..',
                border: InputBorder.none,
                fillColor: Colors.grey.shade200,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                ),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                ),
                prefix: IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.search),
                ),
                suffix: const Icon(CupertinoIcons.camera)
            ),
          ),
        ),
      ),
      body: FutureBuilder(
        future: _repo.getCategoryList(),
        builder: (context, snapshot) {
          if(snapshot.data != null && snapshot.data?.isNotEmpty == true) {
            return _buildSuccessField(snapshot.data);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
  Widget _buildSuccessField(List<
      CollectionResponse>? list) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            mainAxisExtent: 120 /// 2
        ),
        itemCount: list?.length,
        itemBuilder: (context, index ) {
          final currentCat = list?[index];
          return InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) =>
              ImageSearchScreen(query: currentCat?.title ?? "")));
            },
            borderRadius: BorderRadius.circular(16),
            child: Ink(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.blueGrey
              ),
              child: Stack(
                children: [
                  ClipRRect(borderRadius:
                  BorderRadius.circular(12),
                      child: Image.network(currentCat?.coverPhoto?.urls?.regular ?? "",
                          width: double.infinity, height: 120,fit: BoxFit.cover)),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black26
                    ),
                    width: double.infinity,
                    height: 120,
                  ),
                  Center(
                    child: Text(currentCat?.title ?? "", style: const TextStyle(fontSize: 20,color: Colors.white)),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}