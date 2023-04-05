import '../model/product_model.dart';

class ProductState {
  List<ProductModel>? productModelData; // variable

  String username = 'bilawal';
  String name = 'biluu';

  ProductState({
    this.productModelData,
    this.username = 'bilawal',
    this.name= 'biluu',
  }); // constructor

  ProductState.fromBilawalState(ProductState anotherState) {
    // name constructor
    productModelData = anotherState.productModelData;
    username = anotherState.username;
    name = anotherState.name;
  }
}
