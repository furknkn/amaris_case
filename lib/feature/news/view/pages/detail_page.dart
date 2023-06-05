import 'package:amaris_case/core/shared/model/news/news_response_model.dart';
import 'package:amaris_case/feature/news/view/widgets/detail/detail_app_bar.dart';
import 'package:amaris_case/feature/news/view/widgets/detail/detail_body.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
 final News news;
  const DetailPage({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const DetailAppBar(),
        body: DetailBody(news: news),),
    );
  }
}