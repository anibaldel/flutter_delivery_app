import 'package:flutter/material.dart';

class FavoriteTab extends StatefulWidget {
  FavoriteTab({Key key}) : super(key: key);

  @override
  _FavoriteTabState createState() => _FavoriteTabState();
}

class _FavoriteTabState extends State<FavoriteTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Favorites'),
      ),
    );
  }
}