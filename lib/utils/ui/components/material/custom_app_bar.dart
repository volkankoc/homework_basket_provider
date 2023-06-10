import 'package:flutter/material.dart';
import 'package:homework_basket_provider/config/style/color_management.dart';
import 'package:homework_basket_provider/provider/basket_provider.dart';
import 'package:homework_basket_provider/utils/enums/app_bar_type.dart';
import 'package:homework_basket_provider/utils/ui/components/button/custom_icon_button.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBarType appBarType;
  const CustomAppBar({super.key, required this.appBarType});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: _leading(context),
      title: configureAppBar(),
      actions: [
        CustomIconButton(
          onPressed: () {},
          iconData: Icons.shopping_basket,
          color: ColorManager.pink,
        ),
         Center(
          child: Text(
            context.watch<BasketProvider>().basketCount.toString(),
            style:const  TextStyle(color: ColorManager.black),
          ),
        )
      ],
    );
  }

  CustomIconButton _leading(BuildContext context) {
    return CustomIconButton(
      onPressed: () {
        appBarType==AppBarType.logo ? null: Navigator.pop(context);
      },
      iconData:appBarType==AppBarType.logo ? Icons.home : Icons.arrow_back,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(56);
  Widget configureAppBar() {
    if (appBarType == AppBarType.logo) {
      return const FlutterLogo();
    } else {
      return const Text("Trendyol");
    }
  }
}
