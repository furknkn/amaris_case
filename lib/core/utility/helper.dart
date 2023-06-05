import 'package:amaris_case/core/shared/model/news/news_response_model.dart';

class Helper{
  static String? newsFirstAvatar(News news){
if(news.media!.isNotEmpty) {
  return news.media!.first.mediaMetadata!.first.url!;
}
return null;
  }
  static String? newsLastAvatar(News news){
if(news.media!.isNotEmpty) {
  return news.media!.first.mediaMetadata!.last.url!;
}
return null;
  }
}