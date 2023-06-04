import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/productModel.dart';
import 'bloc/addcart_bloc.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<CartBloc, List<Products>>(
      builder: (context, state) {
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: state.length,
                itemBuilder: (context, index) {
                  final item = state[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Color.fromARGB(255, 177, 215, 231),
                      height: 300,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                item.image.toString(),
                                height: 150,
                              ),
                              Expanded(child: Text(item.title.toString())),
                            ],
                          ),
                          Text(item.description.toString())
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    ));
  }
}
