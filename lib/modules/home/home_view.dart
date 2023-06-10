import 'package:flutter/material.dart';
import 'package:homework_basket_provider/modules/detail/detail_view.dart';
import 'package:homework_basket_provider/modules/item/item_view_model.dart';
import 'package:homework_basket_provider/utils/ui/components/item_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final items = ItemViewModel().items;
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailView(item: items[index],)));
              },
              title: ItemCard(
                productImage: items[index].productImage,
                productName: items[index].productName,
                prodcutPrice: items[index].productPrice,
              ),
            );
          },
        ),
      ),
    );
  }
}
