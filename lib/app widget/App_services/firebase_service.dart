
import 'package:firebase_core/firebase_core.dart';

import '../../firebase_options.dart';

@pragma('vm:entry-point')
Future<void>initializeFirebaseServices()async{
  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  
}