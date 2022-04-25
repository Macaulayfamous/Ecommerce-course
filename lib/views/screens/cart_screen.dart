import 'package:ecommerce_app/provider/cart_provider.dart';
import 'package:ecommerce_app/views/screens/widget/cart_empty.dart';
import 'package:ecommerce_app/views/screens/widget/cart_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _cartProvider = Provider.of<CartProvider>(context);
    return _cartProvider.getCartItem.isNotEmpty
        ? Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white70,
              title: Text(
                'Cart (${_cartProvider.getCartItem.length})',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    _cartProvider.clearCartData();
                  },
                  icon: Icon(
                    CupertinoIcons.trash,
                  ),
                ),
              ],
            ),
            body: ListView.builder(
                itemCount: _cartProvider.getCartItem.length,
                itemBuilder: (BuildContext context, int index) {
                  return ChangeNotifierProvider.value(
                    value: _cartProvider.getCartItem.values.toList()[index],
                    child: CartItem(
                      productId: _cartProvider.getCartItem.keys.toList()[index],
                    ),
                  );
                }),
            bottomSheet: Padding(
              padding: const EdgeInsets.all(
                10.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                        ),
                        primary: Colors.black,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Checkout',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '${_cartProvider.totalAmount.toStringAsFixed(3)}',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          )
        : Scaffold(
            body: CartEmpty(),
          );
  }
}
