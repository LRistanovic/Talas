import 'package:flutter/material.dart';
import 'package:talas/networking/network_repository.dart';
import 'package:talas/networking/storage_repository.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final loggedIn = await NetworkRepository.checkForCredentials();
  runApp(TalasApp(loggedIn));
}
