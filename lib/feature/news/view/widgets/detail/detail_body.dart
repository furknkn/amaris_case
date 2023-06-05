import 'package:amaris_case/core/constants/application_constants.dart';
import 'package:amaris_case/core/shared/model/news/news_response_model.dart';
import 'package:amaris_case/core/utility/app_text.dart';
import 'package:amaris_case/core/utility/helper.dart';
import 'package:amaris_case/core/utility/screen_size.dart';
import 'package:flutter/material.dart';

class DetailBody extends StatelessWidget {
  final News news;
  const DetailBody({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.network( Helper.newsLastAvatar(news)??ApplicationConstants.defaultNewsImage,height: 250.0.px,),
      Padding(
        padding:  EdgeInsets.all(8.0.px),
        child: Expanded(child: AppText.s16w700(text: news.title)),
      ),
      13.0.heightPxBox,
       Padding(
        padding:  EdgeInsets.all(8.0.px),
        child: Expanded(child: AppText.s13w500(text: news.abstract)),
      ),
      


    ],);
  }
}