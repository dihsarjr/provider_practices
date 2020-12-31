import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/provider_class.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("provider"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Provider.of<ProviderClass>(context, listen: false)
                  .addItem("title");
            },
          ),
        ],
      ),
      body: Consumer<ProviderClass>(
        builder: (BuildContext context, value, _) {
          return ListView.builder(
            itemBuilder: (ctx, index) {
              return Text("${value.data[index]}");
            },
            itemCount: value.data.length,
          );
        },
      ),
    );
  }
}
