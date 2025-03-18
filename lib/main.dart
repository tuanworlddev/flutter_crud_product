import 'package:crud/firebase_options.dart';
import 'package:crud/providers/product_provider.dart';
import 'package:crud/screens/add_product_screen.dart';
import 'package:crud/screens/product_list_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({ super.key });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Products',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue.shade800,
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
        ),
        scaffoldBackgroundColor: Colors.grey.shade100,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ProductListScreen(),
        '/add': (context) => const AddProductScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}