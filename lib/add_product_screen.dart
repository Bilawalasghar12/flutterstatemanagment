import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:untitled4todoappusingredux/redux/product_action.dart';
import 'package:untitled4todoappusingredux/redux/product_state.dart';

class AddProduct extends StatefulWidget {
  static const routeName = '/add-product-screen';

  const AddProduct({Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return  StoreConnector<ProductState,ProductState>(
      converter: (store) => store.state,
      builder: (context, data) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Username: ${data.username} /name: ${data.name}'),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter id',
                  border: OutlineInputBorder(),
                ),
                onChanged: (text) {
                  print('Text entered: $text');
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter title',
                  border: OutlineInputBorder(),
                ),
                onChanged: (text) {
                  print('Text entered: $text');
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter description',
                  border: OutlineInputBorder(),
                ),
                onChanged: (text) {
                  print('Text entered: $text');
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter price',
                  border: OutlineInputBorder(),
                ),
                onChanged: (text) {
                  print('Text entered: $text');
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  StoreProvider.of<ProductState>(context).dispatch(
                    AddProductAction(
                      type: 'update username',
                      data: 'bilal',


                    ),
                  );
                  StoreProvider.of<ProductState>(context).dispatch(
                            AddProductAction(
                               type: 'update name',
                              data: 'biloo',
                             ),
                          );

                  // StoreProvider.of<CounterState>(context)
                  //     .dispatch(ActionsCount.Decrement);
                },

                child: Text('add product'),
              ),
              SizedBox(height: 10,),
              // ElevatedButton(
              //   onPressed: () {
              //     StoreProvider.of<ProductState>(context).dispatch(
              //       AddProductAction(
              //         type: 'update name',
              //         data: 'biloo',
              //       ),
              //     );
              //     // StoreProvider.of<CounterState>(context)
              //     //     .dispatch(ActionsCount.Decrement);
              //   },
              //
              //   child: Text('add product'),
              // )
            ],
          ),
        );
      }
    );
  }
}
