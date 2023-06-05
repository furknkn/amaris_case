import 'package:amaris_case/core/shared/model/news/news_response_model.dart';
import 'package:amaris_case/core/utility/screen_size.dart';
import 'package:amaris_case/feature/news/view/widgets/home/news_item.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
 final List<News>? news;
 
  const HomeBody({super.key, this.news});

  @override
  Widget build(BuildContext context) {
    return news!.isNotEmpty? Column(
      children: [
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.all(6.0.px),
              separatorBuilder: (context, index) => const Divider(),
            itemCount: news!.length,
            itemBuilder: (context, index) { 
            News newsItem=news![index];
            return  NewsItemWidget(news: newsItem,);
          },),
        ),
      ],
    ):const Center(child: Icon(Icons.search_off),);
  }
}