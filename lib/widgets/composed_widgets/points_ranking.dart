import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/app_styles.dart';
import '../custom_tile.dart';

class PointsRanking extends StatelessWidget {
  const PointsRanking({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 275,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppStyles.cardBgColor,
            border: Border.all(width: 1, color: Colors.white)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CustomTile(
                text1: 'Points',
                text2: '750',
                icon: Icon(
                  FontAwesomeIcons.coins,
                  color: AppStyles.turquoise,
                )),
            VerticalDivider(
              width: 4,
              thickness: 1,
              color: Colors.orange,
            ),
            CustomTile(
                text1: 'Ranking',
                text2: '181',
                icon: Icon(
                  FontAwesomeIcons.trophy,
                  color: AppStyles.turquoise,
                )),
          ],
        ),
      ),
    );
  }
}
