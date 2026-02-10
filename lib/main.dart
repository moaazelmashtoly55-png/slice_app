import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:slice_app/core/nerwork/dio_helper.dart';
import 'package:slice_app/core/nerwork/local_services.dart';
import 'package:slice_app/slice_app.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalServices.init();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  DioHelper.init();
  runApp(SliceApp());
}
