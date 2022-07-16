import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:k_drama_app/constant/them.dart';
import 'package:styled_widget/styled_widget.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/casts/HanSoHee.jpg'),
          ),
          const Icon(
            IconlyBold.notification,
            size: 14,
            color: Colors.white,
          )
              .padding(all: 5)
              .decorated(
                color: LightColors.ac_color,
                shape: BoxShape.circle,
              )
              .padding(right: 20, left: 4, top: 4, bottom: 4)
              .decorated(
                  color: LightColors.ac_color.withAlpha(100),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      25,
                    ),
                  ))
        ],
      ),
    );
  }
}
