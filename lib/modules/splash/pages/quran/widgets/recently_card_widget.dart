import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/models/sura_data_model.dart';

import '../../../../../core/constants/app_assets.dart';
import '../../../../../core/theme/color_pallete.dart';

class RecentlyCardWidget extends StatelessWidget {
  final SuraDataModel suraDataModel ;
  const RecentlyCardWidget({super.key , required this.suraDataModel});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
        padding: EdgeInsets.all(10),
        height: 150,
        width: 280,
        decoration: BoxDecoration(
            color: ColorPallete.primaryColor,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          children: [
            Column(
              spacing: 15,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(suraDataModel.suraNameAR ,
                    style: theme.textTheme.headlineSmall),
                Text(suraDataModel.suraNameEN ,
                    style: theme.textTheme.headlineSmall),
                Text("${suraDataModel.suraAyahCount}" ,
                    style: theme.textTheme.bodySmall),

              ],
            ),
            Expanded(child: Image.asset(AppAssets.quranCard)),
          ],
        )
    );
  }
}
