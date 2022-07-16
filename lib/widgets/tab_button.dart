import 'package:flutter/material.dart';
import 'package:k_drama_app/constant/them.dart';
import 'package:styled_widget/styled_widget.dart';

class TabButton extends StatelessWidget {
  final String buttonText;
  final IconData buttonIcon;
  final int itemIndex;
  final ValueNotifier<int> notifier;
  final VoidCallback? callback;
  const TabButton({
    Key? key,
    this.callback,
    required this.notifier,
    required this.buttonText,
    required this.itemIndex,
    required this.buttonIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ValueListenableBuilder(
        valueListenable: notifier,
        builder: (BuildContext context, _, __) {
          return [
            Icon(
              buttonIcon,
              size: 16,
              color: notifier.value == itemIndex
                  ? LightColors.pink_color
                  : Colors.white54,
            )
                .padding(all: 4)
                .decorated(
                  shape: BoxShape.circle,
                  color: notifier.value == itemIndex
                      ? Colors.white
                      : LightColors.bg_color,
                )
                .padding(all: 2),
            Text(buttonText,
                style: const TextStyle(
                  color: Colors.white60,
                  fontSize: 12,
                )).padding(left: 5, right: 8),
          ]
              .toRow()
              .decorated(
                color: notifier.value == itemIndex
                    ? LightColors.ac_color
                    : LightColors.greyColor,
                borderRadius: BorderRadius.circular(50.0),
              )
              .gestures(
            onTap: () {
              notifier.value = itemIndex;
              callback;
            },
          );
        },
      ),
    );
  }
}
