import 'package:flutter/material.dart';
import 'package:untitled4todoappusingredux/add_product_screen.dart';
import 'package:untitled4todoappusingredux/redux/product_redux.dart';
import 'package:untitled4todoappusingredux/redux/product_state.dart';
import 'package:untitled4todoappusingredux/routes.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
void main() {
  final Store<ProductState> store = Store<ProductState>(
    productRedux,
    initialState: ProductState(productModelData: []),
  );
  runApp(
    StoreProvider(
      store:store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: AppRoutes.routes,
      ),
    ),
  );
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<ProductState,ProductState>(
        converter: (store) => store.state,
        builder: (context, data) {
        return Scaffold(
          backgroundColor: Colors.purple,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Text('Username: ${data.username}',style: TextStyle(color: Colors.white,fontSize: 20)),
               Text('name: ${data.name}',style: TextStyle(color: Colors.white,fontSize: 20)),
              ElevatedButton(onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddProduct()));
                // Navigator.pushNamed(context, AddProduct.routeName);
              }, child: Text('go to the next page'),),
              SizedBox(height: 10,),


            ],
          ),
        );
      }
    );
  }
}
