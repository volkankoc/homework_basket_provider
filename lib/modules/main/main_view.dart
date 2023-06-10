import 'package:flutter/material.dart';
import 'package:homework_basket_provider/modules/home/home_view.dart';
import 'package:homework_basket_provider/utils/enums/app_bar_type.dart';
import 'package:homework_basket_provider/utils/ui/components/material/custom_app_bar.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar:CustomAppBar(appBarType: AppBarType.logo,),
        body: HomeView(),
      ),
    );
  }
}