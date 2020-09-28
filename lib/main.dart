import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:providers/new.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DataChange>(
      create: (BuildContext context) {
        return DataChange();
      },
      child: MaterialApp(
          debugShowCheckedModeBanner: false, home: ProviderScreen()),
    );
  }
}
