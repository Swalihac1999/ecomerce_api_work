
import 'package:equatable/equatable.dart';

import '../../model/productModel.dart';

abstract class CartEvent extends Equatable {}

class AddToCartEvent extends CartEvent {
  final Products? item;
  AddToCartEvent(this.item);

  @override
  List<Object?> get props => [item];
}

class RemoveFromCartEvent extends CartEvent {
  final int itemId;
  RemoveFromCartEvent(this.itemId);

  @override
  List<Object?> get props => [itemId];
}
