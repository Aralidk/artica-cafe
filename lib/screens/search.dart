import 'package:flutter/material.dart';

import '../util/const.dart';
import '../util/foods.dart';
import '../widgets/smooth_star_rating.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> with AutomaticKeepAliveClientMixin<SearchScreen>{
  final TextEditingController _searchControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0,0,10.0,0),
      child: ListView(
        children: <Widget>[
          const SizedBox(height: 10.0),

          Card(
            elevation: 6.0,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
              child: TextField(
                style: const TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(color: Colors.white,),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white,),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  hintText: "Ara..",
                  suffixIcon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintStyle: const TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                ),
                maxLines: 1,
                controller: _searchControl,
              ),
            ),
          ),
          const SizedBox(height: 5.0),
          ListView.builder(
            shrinkWrap: true,
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: foods.length,
            itemBuilder: (BuildContext context, int index) {
              Map food = foods[index];
              return ListTile(
                title: Text(
                  "${food['name']}",
                  style: const TextStyle(
//                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: AssetImage(
                    "${food['img']}",
                  ),
                ),
                trailing: const Text(r"$10"),
                //TODO rating başlangıç
                // subtitle:  const Row(
                //   children: <Widget>[
                //     SmoothStarRating(
                //       starCount: 1,
                //       allowHalfRating: true,
                //       rating: 5.0,
                //       size: 12.0,
                //     ),
                //     SizedBox(width: 6.0),
                //     Text(
                //       "5.0 (23 Yorum)",
                //       style: TextStyle(
                //         fontSize: 12,
                //         fontWeight: FontWeight.w300,
                //       ),
                //     ),
                //   ],
                // ),
                onTap: (){},
              );
            },
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
