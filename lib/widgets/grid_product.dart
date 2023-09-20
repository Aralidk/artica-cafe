import 'package:dental_dentist/widgets/smooth_star_rating.dart';
import 'package:flutter/material.dart';
import '../screens/details.dart';

class GridProduct extends StatelessWidget {
  final String name;
  final String img;
  final bool isFav;
  final double rating;
  final int raters;
  final int? price;
  final List<String>? tags;

  const GridProduct(
      {Key? key,
      required this.name,
      required this.img,
      required this.isFav,
      required this.rating,
      this.tags,
      required this.raters,
      this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListView(
        shrinkWrap: true,
        primary: false,
        children: <Widget>[
          Stack(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 3.6,
                width: MediaQuery.of(context).size.width / 2.2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: -10.0,
                bottom: 3.0,
                child: RawMaterialButton(
                  onPressed: () {},
                  fillColor: Colors.white,
                  shape: const CircleBorder(),
                  elevation: 4.0,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Icon(
                      isFav ? Icons.favorite : Icons.favorite_border,
                      color: Colors.red,
                      size: 17,
                    ),
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 2.0, top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                  ),
                  maxLines: 2,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(
                      tags?.length ?? 0,
                      (index) => Chip(
                          onDeleted: () {},
                          deleteButtonTooltipMessage: "",
                          deleteIcon: Icon(tags![index] == "hot"
                              ? Icons.sunny
                              : Icons.ac_unit),
                          label: Text(tags![index]),
                          backgroundColor: tags![index] == "hot"
                              ? Colors.red
                              : Colors.blue)),
                ),
                Text(
                  "$price ₺",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.yellow[700]!),
                  maxLines: 2,
                ),
              ],
            ),
          ),

          //TODO yorumlar başlangıç
          // Padding(
          //   padding: const EdgeInsets.only(bottom: 5.0, top: 2.0),
          //   child: Row(
          //     children: <Widget>[
          //       SmoothStarRating(
          //         starCount: 5,
          //         allowHalfRating: true,
          //         rating: rating,
          //         size: 10.0,
          //       ),
          //
          //       Text(
          //         " $rating ($raters Yorum)",
          //         style: const TextStyle(
          //           fontSize: 11.0,
          //         ),
          //       ),
          //
          //     ],
          //   ),
          // ),
        ],
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const ProductDetails();
            },
          ),
        );
      },
    );
  }
}
