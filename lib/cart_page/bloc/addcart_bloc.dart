
import 'package:ecomerce_apiwork/model/productModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'addcart_event.dart';


class CartBloc extends Bloc<CartEvent, List<Products>> {
  CartBloc() : super([]){
    on<AddToCartEvent>((event, emit) {
       state.add(event.item!);
        emit(state);
    });
  }

  // Stream<List<Products?>> mapEventToState(CartEvent event) async* {
  //   if (event is AddToCartEvent) {
  //     state.add(event.item!);
  //      yield state;
  //   } else if (event is RemoveFromCartEvent) {
  //     yield state.where((item) => item.id!= event.itemId).toList();
  //   }
  // }
}















// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:meta/meta.dart';

// part 'addcart_event.dart';
// part 'addcart_state.dart';

// class AddcartBloc extends Bloc<AddcartEvent, AddcartState> {
//   AddcartBloc() : super(AddcartInitial()) {
//     on<AddcartEvent>((event, emit) {
//       // TODO: implement event handler
//     });
//   }
// }
