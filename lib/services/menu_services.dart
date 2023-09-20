import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/menu_item.dart';


class MenuServices {

  static Future<List<MenuItem>> getCoffee() async {
    QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore
        .instance
        .collection("menu")
        .where("category", isEqualTo: "coffee")
        .get();

    List<MenuItem> result = [];
    for (int i = 0; i < snapshot.docs.length; i++) {
      MenuItem menuItem = MenuItem.fromJson(snapshot.docs[i].data());
      result.add(menuItem);
    }
    return result;
  }

  static Future<List<MenuItem>> getMilkshakes() async {
    QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore
        .instance
        .collection("menu")
        .where("category", isEqualTo: "milkshake")
        .get();
    List<MenuItem> result = [];
    for (int i = 0; i < snapshot.docs.length; i++) {
      MenuItem menuItem = MenuItem.fromJson(snapshot.docs[i].data());
      result.add(menuItem);
    }
    return result;
  }

  static Future<List<MenuItem>> getBubbles() async {
    QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore
        .instance
        .collection("menu")
        .where("category", isEqualTo: "bubble")
        .get();
    List<MenuItem> result = [];
    for (int i = 0; i < snapshot.docs.length; i++) {
      MenuItem menuItem = MenuItem.fromJson(snapshot.docs[i].data());
      result.add(menuItem);
    }
    return result;
  }

  static Future<List<MenuItem>> getOthers() async {
    QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore
        .instance
        .collection("menu")
        .where("category", isEqualTo: "others")
        .get();
    List<MenuItem> result = [];
    for (int i = 0; i < snapshot.docs.length; i++) {
      MenuItem menuItem = MenuItem.fromJson(snapshot.docs[i].data());
      result.add(menuItem);
    }
    return result;
  }

  static Future<List<MenuItem>> getFrozens() async {
    QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore
        .instance
        .collection("menu")
        .where("category", isEqualTo: "frozen")
        .get();
    List<MenuItem> result = [];
    for (int i = 0; i < snapshot.docs.length; i++) {
      MenuItem menuItem = MenuItem.fromJson(snapshot.docs[i].data());
      result.add(menuItem);
    }
    return result;
  }


}