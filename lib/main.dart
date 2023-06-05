import 'package:amaris_case/core/init/notifier/provider_list.dart';
import 'package:amaris_case/core/utility/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'core/init/dependency/config.dart';
import 'feature/news/view/pages/home_page.dart';

void main() async{
  await _init();
  runApp(
     MultiProvider(
      providers: [...getIt<ApplicationProviderList>().dependItems],
      child: 
    const NewsCaseApp()));
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top]);
  setup();
}
class NewsCaseApp extends StatelessWidget {
  const NewsCaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      builder: (context, child) {
        
        getIt<ScreenSize>().screenSize=MediaQuery.of(context).size;
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
      theme: ThemeData(
    
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        
      ),
      home: const HomePage(),
    );
  }
}

