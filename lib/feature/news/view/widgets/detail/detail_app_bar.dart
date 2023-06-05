import 'package:amaris_case/core/utility/app_text.dart';
import 'package:amaris_case/core/utility/context_extension.dart';
import 'package:amaris_case/core/utility/screen_size.dart';
import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget implements PreferredSizeWidget {

  const DetailAppBar({Key? key})
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
          AppText.s16w500(text: "Detail"),
         IconButton(onPressed:() =>  context.pop(), icon: const Icon(Icons.clear))
              
       
        ]),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(10.0.percent);
}