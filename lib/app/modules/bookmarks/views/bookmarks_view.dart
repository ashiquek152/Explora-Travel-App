import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bookmarks_controller.dart';

class BookmarksView extends GetView<BookmarksController> {
  const BookmarksView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookmarksView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BookmarksView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
