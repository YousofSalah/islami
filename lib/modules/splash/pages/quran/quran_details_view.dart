import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/theme/color_pallete.dart';
import 'package:islami/models/sura_data_model.dart';

class QuranDetailsView extends StatelessWidget {
  const QuranDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var data = ModalRoute.of(context)!.settings.arguments as SuraDataModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(data.suraNameEN),
      ),
      body: Stack(
        children: [

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      AppAssets.leftCornerImg ,
                        height: 85 ,
                        width: 85,
                    ),

                    Image.asset(
                        AppAssets.rightCornerImg,
                    height: 85,
                    width: 85,
                    ),
                  ],
                ),
              ),

              Image.asset( AppAssets.BottomDecorationImg)
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 25,),
              Text(
                data.suraNameAR ,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge?.copyWith(
                  color: ColorPallete.primaryColor
                ),
              )
            ],
          )
        ],
      ),

    );
  }
  loadDataFromAssets(){
    

  }
}
