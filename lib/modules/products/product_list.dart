import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 50.0,
          width: 310.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.grey.shade200),
          child: TextFormField(
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'search',
            labelText: 'Product search',
            prefixIcon: Icon(Icons.person),
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          ),
        ),
        ),
        actions: [
          
        ],
      )
    );
  }
}