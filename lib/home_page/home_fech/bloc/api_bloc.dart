import 'package:flutter_bloc/flutter_bloc.dart';

import '../fetch_api.dart';
import 'api_event.dart';
import 'api_state.dart';

class ApiBloc extends Bloc<ApiEvent,ApiState >
 {

  ApiBloc():super (ApiLoadingState()){
    on<LoadApiEvent>((event, emit) async{
      emit (ApiLoadingState());
      try {
        final users = await ProductRepo().fetchproduct();
        emit(ApiLoadedState(users));
      } catch (e) {
        emit(ApiErrorState(e.toString()));
        
      }

    } );
  }
  
}