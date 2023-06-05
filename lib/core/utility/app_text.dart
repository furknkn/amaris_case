import 'package:amaris_case/core/utility/screen_size.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle normal = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 11.0.px,
  );
  static TextStyle medium = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 11.0.px,
  );
  static TextStyle regular = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 11.0.px,
  );

  static TextStyle bold = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 11.0.px,
  );
}

class AppText {
 
 

  static Text s10w400({ final String? text, Color? color,int? maxLines}) {
    return Text(
      text??"",
      style: AppTextStyles.medium.copyWith(fontSize: 10.0.px, color: color ?? Colors.black,
      overflow: TextOverflow.ellipsis,
      ),
    );
  }

  static Text s10w500({ final String? text, Color? color,int? maxLines}) {
    return Text(
    text??"",
      style: AppTextStyles.medium
          .copyWith(fontSize: 10.0.px, color: color ??  Colors.black, fontWeight: FontWeight.w500,
      overflow: TextOverflow.ellipsis),
    );
  }

  static Text s10w700({ final String? text, Color? color,int? maxLines}) {
    return Text(
            text??"",
      style: AppTextStyles.medium
          .copyWith(fontSize: 10.0.px, color: color ??  Colors.black, fontWeight: FontWeight.w600,
      overflow: TextOverflow.ellipsis),
    );
  }
    static Text s13w400({ final String? text, Color? color,int? maxLines}) {
    return Text(
            text??"",
      style: AppTextStyles.medium.copyWith(fontSize: 13.0.px, color: color ?? Colors.black,
      overflow: TextOverflow.ellipsis),
    );
  }

  static Text s13w500({ final String? text, Color? color,int? maxLines}) {
    return Text(
            text??"",
      style: AppTextStyles.medium
          .copyWith(fontSize: 13.0.px, color: color ??  Colors.black, fontWeight: FontWeight.w500,),
    );
  }

  static Text s13w700({ final String? text, Color? color,int? maxLines}) {
    return Text(
            text??"",
      style: AppTextStyles.medium
          .copyWith(fontSize: 13.0.px, color: color ??  Colors.black, fontWeight: FontWeight.w600,
      overflow: TextOverflow.ellipsis),
      maxLines: maxLines,
    );
  }
    static Text s16w400({ final String? text, Color? color,int? maxLines}) {
    return Text(
            text??"",
      style: AppTextStyles.medium.copyWith(fontSize: 16.0.px, color: color ?? Colors.black,
      overflow: TextOverflow.ellipsis),
    );
  }

  static Text s16w500({ final String? text, Color? color,int? maxLines}) {
    return Text(
            text??"",
      style: AppTextStyles.medium
          .copyWith(fontSize: 16.0.px, color: color ??  Colors.black, fontWeight: FontWeight.w500,
      overflow: TextOverflow.ellipsis),
    );
  }

  static Text s16w700({ final String? text, Color? color,int? maxLines}) {
    return Text(
            text??"",
      style: AppTextStyles.medium
          .copyWith(fontSize: 16.0.px, color: color ??  Colors.black, fontWeight: FontWeight.w700,),
          maxLines: maxLines,
    );
  }

 
  
}