import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../models/menu_item.dart';
import '../services/menu_services.dart';
import '../util/categories.dart';
import '../util/foods.dart';
import '../widgets/grid_product.dart';
import '../widgets/home_category.dart';
import '../widgets/slider_item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin<Home> {
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 25.0),
            CarouselSlider(
              items: map<Widget>(
                foods,
                (index, i) {
                  Map food = foods[index];
                  return SliderItem(
                    img: food["img"],
                    isFav: false,
                    name: food["name"],
                    rating: 5.0,
                    raters: 23,
                  );
                },
              ).toList(),
              options: CarouselOptions(
                height: 300,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 1.0,
                aspectRatio: 2.0,
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              "Kategoriler",
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.w800, color: Colors.red),
            ),
            const SizedBox(height: 10.0),
            SizedBox(
              height: 65.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  Map cat = categories[index];
                  return HomeCategory(
                    icon: cat['icon'],
                    title: cat['name'],
                    items: cat['items'].toString(),
                    isHome: true,
                    tap: () {},
                  );
                },
              ),
            ),
            FutureBuilder<List<MenuItem>>(
                future: MenuServices.getCoffee(),
                builder: (BuildContext context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return CategoryItemsView(
                      categoryName: "Kahve",
                      menuItems: snapshot.data!,
                      image:
                          "https://images.pexels.com/photos/3879495/pexels-photo-3879495.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    );
                  } else {
                    return const Center(
                        child: CircularProgressIndicator(color: Colors.red));
                  }
                }),
            FutureBuilder<List<MenuItem>>(
                future: MenuServices.getMilkshakes(),
                builder: (BuildContext context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return CategoryItemsView(
                      categoryName: "MilkShake",
                      menuItems: snapshot.data!,
                      image:
                          "https://images.pexels.com/photos/103566/pexels-photo-103566.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    );
                  } else {
                    return const Center(
                        child: CircularProgressIndicator(color: Colors.red));
                  }
                }),
            FutureBuilder<List<MenuItem>>(
                future: MenuServices.getBubbles(),
                builder: (BuildContext context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return CategoryItemsView(
                      categoryName: "Bubble Tea",
                      menuItems: snapshot.data!,
                      image:
                          "https://images.pexels.com/photos/8911656/pexels-photo-8911656.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    );
                  } else {
                    return const Center(
                        child: CircularProgressIndicator(color: Colors.red));
                  }
                }),
            FutureBuilder<List<MenuItem>>(
                future: MenuServices.getFrozens(),
                builder: (BuildContext context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return CategoryItemsView(
                      categoryName: "Frozen",
                      menuItems: snapshot.data!,
                      image:
                          "https://images.pexels.com/photos/6542727/pexels-photo-6542727.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    );
                  } else {
                    return const Center(
                        child: CircularProgressIndicator(color: Colors.red));
                  }
                }),
            FutureBuilder<List<MenuItem>>(
                future: MenuServices.getOthers(),
                builder: (BuildContext context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return CategoryItemsView(
                      categoryName: "Diğer",
                      menuItems: snapshot.data!,
                      image:
                          "https://images.pexels.com/photos/4093362/pexels-photo-4093362.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    );
                  } else {
                    return const Center(
                        child: CircularProgressIndicator(color: Colors.red));
                  }
                }),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class CategoryItemsView extends StatelessWidget {
  const CategoryItemsView({
    super.key,
    required this.menuItems,
    required this.image,
    required this.categoryName,
  });
  final List<MenuItem> menuItems;
  final String image;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20.0),
        Text(
          categoryName,
          style: const TextStyle(
              fontSize: 30, fontWeight: FontWeight.w800, color: Colors.red),
        ),
        const SizedBox(height: 30),
        GridView.builder(
          shrinkWrap: true,
          primary: false,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              mainAxisExtent: 250,
              maxCrossAxisExtent: 400),
          itemCount: menuItems.length,
          itemBuilder: (BuildContext context, int index) {
            return GridProduct(
              img: image,
              isFav: false,
              name: menuItems[index].name,
              rating: 5.0,
              raters: 23,
              price: menuItems[index].price,
              tags: menuItems[index].tags,
            );
          },
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
