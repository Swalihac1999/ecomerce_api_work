import 'package:equatable/equatable.dart';

import '../../../model/productModel.dart';

abstract class ApiState extends Equatable {}

class ApiLoadingState extends ApiState {
  @override
  List<Object?> get props => [];
}

class ApiLoadedState extends ApiState {
  ApiLoadedState(this.users);
  final List<Products> users;

  @override
  List<Object?> get props => [];
}

class ApiErrorState extends ApiState {
  ApiErrorState(this.error);
  final String error;

  @override
  List<Object?> get props => [];
}
