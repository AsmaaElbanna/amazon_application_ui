import 'package:amazon_application_ui/constants.dart';
import 'package:amazon_application_ui/models/icon_model.dart';
import 'package:flutter/cupertino.dart';

final List<IconModel> headerImages = IconModel.icons;
Widget buildIconLis() => Padding(
      padding: const EdgeInsets.only(bottom: Constants.kPadding),
      child: SingleChildScrollView(scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            headerImages.length,
            (index) => Container(
              //padding: EdgeInsets.all(Constants.kPadding * 2),
            //  margin: EdgeInsets.all(Constants.kPadding *2),
              width: 100,
              child: Column(
                children: [
                  Image.asset(headerImages[index].icon,height: 50,width: 50,),
                  Text(headerImages[index].title,textAlign: TextAlign.center,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
