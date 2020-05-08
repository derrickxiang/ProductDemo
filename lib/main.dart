import 'package:flutter/material.dart';
import './core/viewmodels/CRUDModel.dart';
import './locator.dart';
import './ui/router.dart';
import 'package:provider/provider.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [
        ChangeNotifierProvider(
          builder: (_) => locator<CRUDModel>()
        ),
      ],
      child: MaterialApp(

        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        title: 'Product Demo',
        theme: ThemeData(),
        onGenerateRoute: Router.generateRoute,
      )
    );
  }
}

