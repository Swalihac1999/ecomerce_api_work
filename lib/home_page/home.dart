// ignore_for_file: prefer_const_constructors

import 'package:ecomerce_apiwork/home_page/home_fech/bloc/api_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../detailsScreen/details.dart';
import '../model/productModel.dart';
import 'home_fech/bloc/api_event.dart';
import 'home_fech/bloc/api_state.dart';
import 'home_fech/fetch_api.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ApiBloc>(
      create: (context) =>
          BlocProvider.of<ApiBloc>(context)..add(LoadApiEvent()),
      child: Scaffold(
          body: BlocBuilder<ApiBloc, ApiState>(builder: (context, state) {
        if (state is ApiLoadingState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is ApiLoadedState) {
          List<Products> userList = state.users;
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2 / 2,
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 50,
              mainAxisExtent: 350,
            ),
            itemCount: userList.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailsScreen(productsDetails: userList[index]),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.2),
                      color: Colors.blue[100],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Image.network(
                            userList[index].image!,
                            width: 90,
                            height: 180,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            children: [
                              Text(userList[index].title!),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(userList[index].rating!.rate.toString())
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                //  Card(
                //   child: Column(
                //     children: [
                //       Container(
                //         child: Center(
                //           child: Image.network(
                //             productData[index].image!,
                //             width: 90,
                //             height: 180,
                //           ),
                //         ),
                //       ),
                //       SizedBox(
                //         height: 10,
                //       ),
                //       Padding(
                //         padding: const EdgeInsets.all(8.0),
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [

                //             Row(
                //               children: [
                //                 Icon(
                //                   Icons.star,
                //                   color: Colors.yellow,
                //                 ),
                //                 SizedBox(
                //                   width: 10,
                //                 ),
                //                 Text(productData[index]
                //                     .rating!
                //                     .rate
                //                     .toString())
                //               ],
                //             ),

                //           ],
                //         ),
                //       )
                //     ],
                //   ),
                // ),
              );
              // return InkWell(
              //   onTap: () => Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => DetailsScreen(
              //             productsDetails: productData[index]),
              //       )),
              //   child: Padding(
              //     padding: EdgeInsets.only(top: 20.0),
              //     child: Container(
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(12.2),
              //         color: Color.fromARGB(255, 222, 219, 219),
              //       ),
              //       child: Column(
              //         children: [
              //           Padding(
              //             padding: EdgeInsets.only(top: 2),
              //             child: Image.network(
              //               '${productData.elementAt(index).image}',
              //               height: 130,
              //               width: 180,
              //               fit: BoxFit.contain,
              //             ),
              //           ),
              //           Padding(
              //             padding: EdgeInsets.all(19),
              //             child: Text("${productData.elementAt(index).category}"),
              //           )
              //         ],
              //       ),
              //     ),
              //   ),
              // );
            },
          );
        } else {
          return Center(
            child: CircularProgressIndicator(
              strokeWidth: 3,
              color: Colors.black12,
            ),
          );
        }
      })),
    );
  }
}
