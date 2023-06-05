
import 'package:amaris_case/feature/news/repository/news_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){

  test("get news test",()async{
var news= await NewsRepository().getNews();
expect(news, isNotNull);

  });
}

