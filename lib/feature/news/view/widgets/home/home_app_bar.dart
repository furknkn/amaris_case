

import 'package:amaris_case/core/utility/screen_size.dart';
import 'package:amaris_case/feature/news/viewmodel/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {

  const HomeAppBar({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40.0.percent  ,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.0.px),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          
          Expanded(child: TextField(
            autofocus: false,
            onChanged: (value) {
              Provider.of<HomeViewModel>(context,listen: false).searcNews(value);
            },
          )),
          const Icon(Icons.search)
              
       
        ]),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(10.0.percent);
}