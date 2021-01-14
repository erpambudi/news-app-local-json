import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;

  CustomScaffold({this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [body, _buildShortAppBar(context)],
        ),
      ),
    );
  }

  Card _buildShortAppBar(BuildContext context) {
    return Card(
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(16.0),
        ),
      ),
      margin: EdgeInsets.all(0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              }),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Text(
              'N',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ],
      ),
    );
  }
}
