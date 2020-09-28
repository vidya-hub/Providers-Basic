import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderScreen extends StatelessWidget {
  final _controller = TextEditingController();
  // List<Widget> data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 109,
          ),
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _controller,
                    ),
                  ),
                  RaisedButton(
                    child: Text("click"),
                    onPressed: () {
                      Provider.of<DataChange>(context, listen: false)
                          .changevalue(_controller.text);
                    },
                  ),
                  Consumer<DataChange>(
                    builder: (BuildContext context, value, Widget child) {
                      return value == null
                          ? Container
                          : Column(
                              children: value.valList,
                            );
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DataChange extends ChangeNotifier {
  // String data = "sometest";
  List<Widget> valList = [];
  void changevalue(value) async {
    valList.add(Text(value));
    print(valList);
    notifyListeners();
  }
}
