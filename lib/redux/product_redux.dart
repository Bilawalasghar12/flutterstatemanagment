// we make functions in the redux file from state

import 'package:untitled4todoappusingredux/redux/product_action.dart';
import 'package:untitled4todoappusingredux/redux/product_state.dart';

ProductState productRedux(ProductState previousState, dynamic action) {
  ProductState newState = ProductState.fromBilawalState(previousState);
  if (action is AddProductAction) {
    if (action.type == 'Add product') {
      newState.productModelData = action.data;
    }
    if(action.type == 'update username'){
      newState.username = 'bilal';
    }

    if(action.type == 'update name'){
      newState.name = 'biloo';
    }

  }

  return newState;
}
