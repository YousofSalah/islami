import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:islami/core/constants/app_routes_name.dart';
import 'package:islami/models/sura_data_model.dart';

import '../../../../../core/constants/app_assets.dart';

class QuranCardWidget extends StatelessWidget {
  final SuraDataModel suraDataModel;
  const QuranCardWidget({super.key , required this.suraDataModel});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Bounceable(
      onTap: (){
        Navigator.pushNamed(context, AppRoutesName.quranDetailsView , arguments: suraDataModel);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image:AssetImage(AppAssets.quranNumberIcn)),
                )
            ),
            SizedBox(width: 24,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  suraDataModel.suraNameEN ,
                  style: theme.textTheme.titleLarge?.copyWith(
                      color: Colors.white
                  ),
                ),
                Text(
                  "${suraDataModel.suraAyahCount}" "verses",
                  style: theme.textTheme.bodySmall?.copyWith(
                      color: Colors.white
                  ),
                )
              ],
            ),
            Spacer(),
            Text(
              suraDataModel.suraNameAR ,
              style: theme.textTheme.titleLarge?.copyWith(
                  color: Colors.white
              ),

            )

          ],
        ),
      ),
    );;
  }
}


