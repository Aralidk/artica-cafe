import 'package:flutter/material.dart';
import '../util/comments.dart';
import '../util/const.dart';
import '../util/foods.dart';
import '../widgets/badge.dart';
import '../widgets/smooth_star_rating.dart';
import 'notifications.dart';


class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.keyboard_backspace,
          ),
          onPressed: ()=>Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          "Ürün Detayı",
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: IconBadge(
              icon: Icons.notifications,
              size: 22.0,
            ),
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context){
                    return Notifications();
                  },
                ),
              );
            },
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0,0,10.0,0),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 10.0),
            Stack(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3.2,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      "${foods[1]['img']}",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Positioned(
                  right: -10.0,
                  bottom: 3.0,
                  child: RawMaterialButton(
                    onPressed: (){},
                    fillColor: Colors.white,
                    shape: const CircleBorder(),
                    elevation: 4.0,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Icon(
                        isFav
                            ?Icons.favorite
                            :Icons.favorite_border,
                        color: Colors.red,
                        size: 17,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10.0),

            Text(
              "${foods[1]['name']}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
              maxLines: 2,
            ),

            //TODO rating
            // const Padding(
            //   padding: EdgeInsets.only(bottom: 5.0, top: 2.0),
            //   child: Row(
            //     children: <Widget>[
            //       SmoothStarRating(
            //         starCount: 5,
            //         allowHalfRating: true,
            //         rating: 5.0,
            //         size: 10.0,
            //       ),
            //       SizedBox(width: 10.0),
            //
            //       Text(
            //         "5.0 (23 Yorum)",
            //         style: TextStyle(
            //           fontSize: 11.0,
            //         ),
            //       ),
            //
            //     ],
            //   ),
            // ),


            Padding(
              padding: const EdgeInsets.only(bottom: 5.0, top: 2.0),
              child: Text(
                r"$90",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w900,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),


            const SizedBox(height: 20.0),

            const Text(
              "Ürün Açıklaması",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
              maxLines: 2,
            ),

            const SizedBox(height: 10.0),

            const Text(
              "Nulla quis lorem ut libero malesuada feugiat. Lorem ipsum dolor "
                  "sit amet, consectetur adipiscing elit. Curabitur aliquet quam "
                  "id dui posuere blandit. Pellentesque in ipsum id orci porta",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w300,
              ),
            ),

            //TODO yorumlar başlangıç
            // const SizedBox(height: 20.0),
            // const Text(
            //   "Yorumlar",
            //   style: TextStyle(
            //     fontSize: 18,
            //     fontWeight: FontWeight.w800,
            //   ),
            //   maxLines: 2,
            // ),
            // const SizedBox(height: 20.0),
            // ListView.builder(
            //   shrinkWrap: true,
            //   primary: false,
            //   physics: const NeverScrollableScrollPhysics(),
            //   itemCount:comments.length,
            //   itemBuilder: (BuildContext context, int index) {
            //     Map comment = comments[index];
            //     return ListTile(
            //         leading: CircleAvatar(
            //           radius: 25.0,
            //           backgroundImage: AssetImage(
            //             "${comment['img']}",
            //           ),
            //         ),
            //
            //         title: Text("${comment['name']}"),
            //         subtitle: Column(
            //           children: <Widget>[
            //             const Row(
            //               children: <Widget>[
            //                 SmoothStarRating(
            //                   starCount: 5,
            //                   allowHalfRating: true,
            //                   rating: 5.0,
            //                   size: 12.0,
            //                 ),
            //                 SizedBox(width: 6.0),
            //                 Text(
            //                   "Ekim 14, 2020",
            //                   style: TextStyle(
            //                     fontSize: 12,
            //                     fontWeight: FontWeight.w300,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //
            //             const SizedBox(height: 7.0),
            //             Text(
            //               "${comment["comment"]}",
            //             ),
            //           ],
            //         ),
            //     );
            //   },
            // ),
            // const SizedBox(height: 10.0),
            //bitiş
          ],
        ),
      ),



      bottomNavigationBar: Container(
        height: 50.0,
        child: ElevatedButton(
          child: const Text(
            "Sepete Ekle",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: (){},
        ),
      ),
    );
  }
}
