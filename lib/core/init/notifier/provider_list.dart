

import 'package:amaris_case/feature/news/viewmodel/detail_viewmodel.dart';
import 'package:amaris_case/feature/news/viewmodel/home_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ApplicationProviderList {
 


  List<SingleChildWidget> dependItems = [
    ChangeNotifierProvider(
      create: (context) => HomeViewModel(),
      
    ),
     ChangeNotifierProvider(
      create: (context) => DetailViewModel(),
    ),
    
  ];
}