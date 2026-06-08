import 'dart:io';

import 'package:asroo_store/asro_store_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: 'AIzaSyBJ2nzlcWxEUFsI1WV0gnHrBIAF2C-hqts',
            appId: '1:109844083865:android:d30c35ecac315c1e4f3408',
            messagingSenderId: '109844083865',
            projectId: 'asroo-store-973cf',
          ),
        )
      : await Firebase.initializeApp();

  runApp(const AsrooStoreApp());
}
