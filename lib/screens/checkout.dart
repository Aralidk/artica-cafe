import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../util/foods.dart';
import '../widgets/cart_item.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  final TextEditingController _couponlControl = new TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Checkout",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w800,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            tooltip: "Back",
            icon: Icon(
              Icons.clear,
              color: Theme.of(context).colorScheme.secondary,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 130),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text(
                  "Teslimat Adresi",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            const ListTile(
              title: Text(
                "John Doe",
                style: TextStyle(
//                    fontSize: 15,
                  fontWeight: FontWeight.w900,
                ),
              ),
              subtitle: Text("1278 Loving Acres Road Kansas City, MO 64110"),
            ),
            const SizedBox(height: 10.0),
            const Text(
              "Ödeme Yöntemi",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            Card(
              elevation: 4.0,
              child: ListTile(
                title: const Text(
                  "Kapıda Kredi Kartı",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                leading: Icon(
                  FontAwesomeIcons.creditCard,
                  size: 50.0,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_down,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 4.0,
              child: ListTile(
                title: const Text(
                  "Kapıda Nakit",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                leading: Icon(
                  FontAwesomeIcons.creditCard,
                  size: 50.0,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_down,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              "Sepettekiler",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: foods.length,
              itemBuilder: (BuildContext context, int index) {
//                Food food = Food.fromJson(foods[index]);
                Map food = foods[index];
//                print(foods);
//                print(foods.length);
                return CartItem(
                  img: food['img'],
                  isFav: false,
                  name: food['name'],
                  rating: 5.0,
                  raters: 23,
                );
              },
            ),
          ],
        ),
      ),
      bottomSheet: Card(
        elevation: 4.0,
        child: SizedBox(
          height: 130,
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: <Widget>[
              // Padding(
              //   padding: const EdgeInsets.all(10),
              //   child: Container(
              //
              //     decoration: BoxDecoration(
              //       color: Colors.grey[200],
              //       borderRadius: const BorderRadius.all(
              //         Radius.circular(5.0),
              //       ),
              //     ),
              //     child: TextField(
              //       style: const TextStyle(
              //         fontSize: 15.0,
              //         color: Colors.black,
              //       ),
              //       decoration: InputDecoration(
              //         contentPadding: const EdgeInsets.all(10.0),
              //         border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(5.0),
              //           borderSide: BorderSide(color: Colors.grey[200]!,),
              //         ),
              //         enabledBorder: OutlineInputBorder(
              //           borderSide: BorderSide(color: Colors.grey[200]!,),
              //           borderRadius: BorderRadius.circular(5.0),
              //         ),
              //         hintText: "Coupon Code",
              //         prefixIcon: Icon(
              //           Icons.redeem,
              //           color: Theme.of(context).colorScheme.secondary,
              //         ),
              //         hintStyle: const TextStyle(
              //           fontSize: 15.0,
              //           color: Colors.black,
              //         ),
              //       ),
              //       maxLines: 1,
              //       controller: _couponlControl,
              //     ),
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          "Toplam",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          r"$ 212",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                        const Text(
                          "Getirme Ücreti Dahil",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(5, 5, 10, 5),
                    width: 150.0,
                    height: 50.0,
                    child: ElevatedButton(
                      child: Text(
                        "Sipariş Ver".toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
