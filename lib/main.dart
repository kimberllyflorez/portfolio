import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portafolio_kimberlly/repository/firebase_database_repository.dart';
import 'screens/screens.dart';
import 'package:provider/provider.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const AppState());
}
class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_)=> FirebaseDatabaseRepository())
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const Splash(),
      initialRoute: 'splash',
      routes: {
        'home': (_) => const HomeScreen(),
        'splash': (_) => const Splash(),
        'detailsApp': (_) => const DetailsApps(),
        'Me': (_) => const MyDescription(),
      },
    );
  }
}
