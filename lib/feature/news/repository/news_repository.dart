import 'package:amaris_case/core/constants/application_constants.dart';
import 'package:amaris_case/core/data/network/network_manager.dart';
import 'package:amaris_case/core/shared/model/news/news_response_model.dart';

class NewsRepository{

  Future<List<News>?> getNews()async{

   NewsResponseModel news=await DataLayer().get(fromJson: NewsResponseModel.fromJson, path: ApplicationConstants.mostPopularUrl);
  return news.results;
  }
}