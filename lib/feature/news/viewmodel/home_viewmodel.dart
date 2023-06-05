import 'package:amaris_case/core/init/dependency/config.dart';
import 'package:amaris_case/core/shared/model/news/news_response_model.dart';
import 'package:amaris_case/feature/news/repository/news_repository.dart';
import 'package:flutter/material.dart';

class HomeViewModel with ChangeNotifier{
 
  HomeViewModel(){
    init();
  }
  List<News>? news=[];
  List<News>? newsBase=[];
  bool isLoading=true;

  void init()async{
   newsBase= await getIt<NewsRepository>().getNews();
   newsBase!.sort((a, b) {
     return a.publishedDate!.compareTo(b.publishedDate!);
   },);
   news=newsBase;
   isLoading=false;
   notifyListeners();
  }

  void searcNews(String value){
newsBase=news!.where((element) => element.title!.toUpperCase().contains(value.toUpperCase())).toList();
notifyListeners();
  }
}