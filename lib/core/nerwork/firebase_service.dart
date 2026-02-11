import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:slice_app/core/model/product_model.dart';

class FirebaseService {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static final CollectionReference<ProductModel> _pizzas = _firestore
      .collection('pizzas')
      .withConverter(
        fromFirestore: (snapshot, options) =>
            ProductModel.fromjson(snapshot.data()!),
        toFirestore: (value, options) => value.tojson(),
      );
  static final CollectionReference<ProductModel> _crepe = _firestore
      .collection('crepe')
      .withConverter(
        fromFirestore: (snapshot, options) =>
            ProductModel.fromjson(snapshot.data()!),
        toFirestore: (value, options) => value.tojson(),
      );
  static final CollectionReference<ProductModel> _appetizers = _firestore
      .collection('appetizers')
      .withConverter(
        fromFirestore: (snapshot, options) =>
            ProductModel.fromjson(snapshot.data()!),
        toFirestore: (value, options) => value.tojson(),
      );
  static final CollectionReference<ProductModel> _juice = _firestore
      .collection('juice')
      .withConverter(
        fromFirestore: (snapshot, options) =>
            ProductModel.fromjson(snapshot.data()!),
        toFirestore: (value, options) => value.tojson(),
      );
      static final CollectionReference<ProductModel> _bestOptions = _firestore
      .collection('bestOptions')
      .withConverter(
        fromFirestore: (snapshot, options) =>
            ProductModel.fromjson(snapshot.data()!),
        toFirestore: (value, options) => value.tojson(),
      );

  static Future<void> setPizza(ProductModel pizza) async {
    var ref = _pizzas;
    var doc = ref.doc();
    pizza.id = doc.id;
    return doc.set(pizza);
  }

  static Future<List<ProductModel>> getPizza() async {
    var ref = _pizzas;
    var data = await ref.get();
    return data.docs.map((e) => e.data()).toList();
  }

  static Future<void> setCrepe(ProductModel crepe) async {
    var ref = _crepe;
    var doc = ref.doc();
    crepe.id = doc.id;
    return doc.set(crepe);
  }

  static Future<List<ProductModel>> getCrepe() async {
    var ref = _crepe;
    var data = await ref.get();
    return data.docs.map((e) => e.data()).toList();
  }

  static Future<void> setAppetizers(ProductModel appetizers) async {
    var ref = _appetizers;
    var doc = ref.doc();
    appetizers.id = doc.id;
    return doc.set(appetizers);
  }

  static Future<List<ProductModel>> getAppetizers() async {
    var ref = _appetizers;
    var data = await ref.get();
    return data.docs.map((e) => e.data()).toList();
  }

  static Future<void> setJuice(ProductModel juice) async {
    var ref = _juice;
    var doc = ref.doc();
    juice.id = doc.id;
    return doc.set(juice);
  }

  static Future<List<ProductModel>> getJuice() async {
    var ref = _juice;
    var data = await ref.get();
    return data.docs.map((e) => e.data()).toList();
  }

  static Future<void> setbestOptions(ProductModel bestOptions) async {
    var ref = _bestOptions;
    var doc = ref.doc();
    bestOptions.id = doc.id;
    return doc.set(bestOptions);
  }

  static Future<List<ProductModel>> getbestOptions() async {
    var ref = _bestOptions;
    var data = await ref.get();
    return data.docs.map((e) => e.data()).toList();
  }
}
