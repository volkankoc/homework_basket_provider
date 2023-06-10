import 'package:flutter/material.dart';

import 'package:homework_basket_provider/constants/app_size.dart';
import 'package:homework_basket_provider/provider/basket_provider.dart';
import 'package:homework_basket_provider/utils/ui/components/button/custom_icon_button.dart';
import 'package:homework_basket_provider/utils/ui/components/material/custom_text.dart';
import 'package:provider/provider.dart';

class ItemCard extends StatelessWidget {
  final String productName;
  final double prodcutPrice;
  final String productImage;
  const ItemCard(
      {super.key,
      required this.productName,
      required this.prodcutPrice,
      required this.productImage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: AppSize.a100,
        width: MediaQuery.of(context).size.width,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(
                width: AppSize.a100/2,
                productImage,
                fit: BoxFit.cover,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(text: productName),
                  CustomIconButton(onPressed: () {
                    context.read<BasketProvider>().updateBasket();
                  }, iconData: Icons.add)
                ],
              ),
              CustomText(text: prodcutPrice.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
