import 'package:flutter/material.dart';
import '../Constents/AppConstents.dart';


class InfoTile extends StatelessWidget {
  final String title;
  final String value;
  final IconData? icon;

  const InfoTile({
    super.key,
    required this.title,
    required this.value,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Constants.infoTileMargin,
      padding: Constants.infoTilePadding,
      decoration: BoxDecoration(
        color: Constants.infoTileBackground,
        borderRadius: BorderRadius.circular(Constants.infoTileBorderRadius),
        border: Border.all(color: Constants.infoTileBorder),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (icon != null)
            Padding(
              padding: const EdgeInsets.only(right: 12, top: 4),
              child: Icon(icon, size: 20, color: Constants.iconColor),
            ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Constants.infoTileTitle),
                const SizedBox(height: 4),
                Text(value, style: Constants.infoTileValue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
