// ignore_for_file: must_be_immutable

import 'package:ecomerce_apiwork/cart_page/bloc/addcart_bloc.dart';
import 'package:ecomerce_apiwork/cart_page/bloc/addcart_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/productModel.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({Key? key, required this.productsDetails}) : super(key: key);
  Products productsDetails;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool _obsecuretick = false;
  void _toggle() {
    setState(() {
      _obsecuretick = !_obsecuretick;
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: width * 0.90,
              top: height * 0.02,
            ),
            child: GestureDetector(
              onTap: () {
                _toggle;

                // context
                //     .read<CartBloc>()
                //     .add(AddToCartEvent(widget.productsDetails));
              },
              child: Container(
                height: height * 0.06,
                width: width * 0.16,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Icon(
                      _obsecuretick
                          ? Icons.shopping_cart_outlined
                          : Icons.remove_shopping_cart_outlined,
                      color: Colors.blue[100]),
                ),
              ),
            ),
          ),
          Container(
            height: height * 0.28,
            width: width * 1,
            color: Colors.white,
            alignment: Alignment.center,
            child: Image.network(widget.productsDetails.image!.toString()),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Text(
            widget.productsDetails.title.toString(),
            style: GoogleFonts.anekTelugu(),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(right: width * 0.7),
            child: Text(
              'Description',
              style: GoogleFonts.abel(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.06, top: height * 0.02),
            child: Text(
              widget.productsDetails.description!.toString(),
              style: GoogleFonts.anekTelugu(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.06, top: height * 0.03),
            child: Row(
              children: [
                Text(
                  'Price : ',
                  style: GoogleFonts.abel(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const Icon(
                  Icons.currency_rupee_sharp,
                  size: 14,
                  color: Colors.red,
                ),
                Text(
                  widget.productsDetails.price.toString(),
                  style: GoogleFonts.abel(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: width * 0.8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(widget.productsDetails.rating!.rate.toString())
              ],
            ),
          ),
          Row(
            children: [
              // BlocBuilder<CartBloc, List<Products>>(
              //   bloc: context.read<CartBloc>(),
              //   builder: (context, state) {
                  // return 
                  Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.05,
                      left: width * 0.02,
                    ),
                    child: SizedBox(
                      height: height * 0.06,
                      width: width * 0.20,
                      child: ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<CartBloc>(context)
                                .add(AddToCartEvent(widget.productsDetails));
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.blue[100],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                          child: Text(
                            'Add ',
                            style: GoogleFonts.actor(fontSize: 14),
                          )),
                    ),
                  ),
              //   },
              // ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.05,
                  left: width * 0.04,
                ),
                child: SizedBox(
                  height: height * 0.06,
                  width: width * 0.66,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                      child: Text(
                        'BUY NOW',
                        style: GoogleFonts.actor(fontSize: 14),
                      )),
                ),
              ),
            ],
          )
        ],
      ),
    );

    //  ListView(
    //   children: [
    //     SafeArea(
    //       child: SingleChildScrollView(
    //         child: Column(
    //           children: [
    //             Padding(
    //               padding: const EdgeInsets.all(30),
    //               child: Container(
    //                 height: 300,
    //                 width: 300,
    //                 alignment: Alignment.center,
    //                 child: Image.network(
    //                   productsDetails.image!,
    //                   height: 300,
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ],
    // ),
  }
}
