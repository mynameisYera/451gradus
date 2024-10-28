import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gradus/src/core/colors/app_colors.dart';
import 'package:gradus/src/core/theme/text_theme.dart';

class MessageTileWidget extends StatelessWidget {
  final String username;
  final String message;
  final bool isMe;
  const MessageTileWidget(
      {super.key,
      required this.username,
      required this.message,
      required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 1.2,
          decoration: BoxDecoration(
            color: isMe ? AppColors.buttonColor : AppColors.notBlack,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                topRight: isMe ? Radius.circular(0) : Radius.circular(20),
                bottomLeft: isMe ? Radius.circular(20) : Radius.circular(0)),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username.toUpperCase(),
                  style: TextStyles.headerText.copyWith(
                      color: isMe ? AppColors.notBlack : AppColors.buttonColor),
                ),
                Text(
                  message,
                  style: TextStyles.simpleText,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
