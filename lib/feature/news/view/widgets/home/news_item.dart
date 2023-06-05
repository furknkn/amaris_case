import 'package:amaris_case/core/constants/application_constants.dart';
import 'package:amaris_case/core/shared/model/news/news_response_model.dart';
import 'package:amaris_case/core/utility/app_text.dart';
import 'package:amaris_case/core/utility/context_extension.dart';
import 'package:amaris_case/core/utility/helper.dart';
import 'package:amaris_case/core/utility/screen_size.dart';
import 'package:amaris_case/feature/news/view/pages/detail_page.dart';
import 'package:flutter/material.dart';

class NewsItemWidget extends StatelessWidget {
 final News news;

  const NewsItemWidget({super.key, required this.news,});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () => context.navigate(link: DetailPage(news: news)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        ClipRRect(borderRadius: BorderRadius.circular(100), child: Image.network( Helper.newsFirstAvatar(news)?? ApplicationConstants.defaultNewsImage,width: 50.0.px),),
        10.0.widthPxBox,
        Expanded(child: _body()),
          10.0.widthPxBox,
        const Icon(Icons.arrow_forward_ios_rounded)
      ],),
    );
  }

  SizedBox _body() {
    return SizedBox(
      height: 70.0.px,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,  children: [
        Expanded(child: AppText.s13w700(text: news.title,maxLines: 2)),
        AppText.s10w400(text: news.source),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Expanded(child: AppText.s10w400(text: news.byline)),AppText.s10w400(text: news.publishedDate.toString())],)
      ],),
    );
  }
}