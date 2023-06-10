import 'package:flutter/material.dart';
import 'package:homework_basket_provider/modules/item/item_model.dart';
import 'package:homework_basket_provider/utils/ui/components/material/custom_text.dart';

class DetailView extends StatelessWidget {
  final ItemModel item;
  const DetailView({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: item.productName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
      
            Image.network(item.productImage),
            CustomText(text: item.productPrice.toString()),
          ],
        ),
      ),
    );
  }
}
