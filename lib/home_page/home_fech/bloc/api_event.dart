import 'package:equatable/equatable.dart';

abstract class ApiEvent extends Equatable {
  const ApiEvent();
}

class LoadApiEvent extends ApiEvent {
  @override
  List<Object?> get props => [];
}

// abstract class AddApiEvent extends ApiEvent {
//   final Products fetchItems;

//    AddApiEvent(this.fetchItems);

//   // @override
//   // List<Object> get props => [];
// }
