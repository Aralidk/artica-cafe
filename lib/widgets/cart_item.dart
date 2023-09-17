import 'package:dental_dentist/widgets/smooth_star_rating.dart';
import 'package:flutter/material.dart';
import '../screens/details.dart';

class CartItem extends StatelessWidget {
  final String name;
  final String img;
  final bool isFav;
  final double rating;
  final int raters;

  const CartItem(
      {Key? key,
      required this.name,
      required this.img,
      required this.isFav,
      required this.rating,
      required this.raters})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const ProductDetails();
              },
            ),
          );
        },
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 0.0, right: 10.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.width / 3.5,
                width: MediaQuery.of(context).size.width / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  name,
                  style: const TextStyle(
//                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 10.0),
                //TODO ürün detyı
                // const Row(
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
                const SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Text(
                      r"$90",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w900,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10.0),

                const Text(
                  "Adet: 1",
                  style: TextStyle(
                    fontSize: 11.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
