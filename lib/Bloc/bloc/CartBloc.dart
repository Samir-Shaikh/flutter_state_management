import 'package:bloc/bloc.dart';
import 'CartEvent.dart';

class CartBloc extends Bloc<CartEvent,int>{

  CartBloc() : super(0);

  @override
  Stream<int> mapEventToState(CartEvent event) async* {
    // TODO: implement mapEventToState
    switch (event) {
      case CartEvent.addToCart:
        yield state + 1;
        break;
      case CartEvent.removeFromCart:
        if (state != 0) {
          yield state - 1;
        }
        break;
      default:
        break;
    }
  }

}