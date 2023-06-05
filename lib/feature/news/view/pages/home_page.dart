
import 'package:amaris_case/feature/news/view/widgets/home/home_app_bar.dart';
import 'package:amaris_case/feature/news/view/widgets/home/home_body.dart';
import 'package:amaris_case/feature/news/viewmodel/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const HomeAppBar(),
        body: Consumer<HomeViewModel>(
          
          builder: (context, viewModel, child) {
        return viewModel.isLoading?const Center(child: CircularProgressIndicator(),): HomeBody(news: viewModel.newsBase);
          }, ) ,),
    );
  }
}