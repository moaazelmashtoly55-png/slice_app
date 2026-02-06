import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:slice_app/core/model/crepe_model.dart';
import 'package:slice_app/core/model/pizza_model.dart';

class FirebaseService {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static final CollectionReference<PizzaModel> _pizzas = _firestore
      .collection('pizzas')
      .withConverter(
        fromFirestore: (snapshot, options) =>
            PizzaModel.fromjson(snapshot.data()!),
        toFirestore: (value, options) => value.tojson(),
      );
      static final CollectionReference<CrepeModel> _crepe = _firestore
      .collection('crepe')
      .withConverter(
        fromFirestore: (snapshot, options) =>
            CrepeModel.fromjson(snapshot.data()!),
        toFirestore: (value, options) => value.tojson(),
      );
static Future<void>setPizza(PizzaModel pizza)async{
  var ref=_pizzas;
 var doc= ref.doc();
 pizza.id=doc.id;
  return  doc.set(pizza);
}
static Future<List<PizzaModel>>getPizza()async{
  var ref=_pizzas;
  var data =await ref.get();
  return data.docs.map((e) => e.data(),).toList();
}static Future<void>setCrepe(CrepeModel crepe)async{
  var ref=_crepe;
 var doc= ref.doc();
 crepe.id=doc.id;
  return  doc.set(crepe);
}
static Future<List<CrepeModel>>getCrepe()async{
  var ref=_crepe;
  var data =await ref.get();
  return data.docs.map((e) => e.data(),).toList();
}
}

