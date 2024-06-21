import 'package:fizmat_app/models/info/book_info.dart';
import 'package:fizmat_app/screens/book/local_widgets/books_view.dart';
import 'package:fizmat_app/screens/book/local_widgets/drawer.dart';
import 'package:flutter/material.dart';

class FizBookShelf extends StatefulWidget {
  const FizBookShelf({super.key});

  @override
  State<FizBookShelf> createState() => _FizBookShelfState();
}

class _FizBookShelfState extends State<FizBookShelf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Shelf'), 
        actions: const [
          
        ],
      ),
      drawer: const FizBookDrawer(),
      body: FizBooksView(
        books: [
          FizBookInfo(
            title: '读完',
            imagePath: 'assets/1.png',
            group: "7-group",
          ),
        ],
        currentGroup: "All",
      ),
    );
  }
}

