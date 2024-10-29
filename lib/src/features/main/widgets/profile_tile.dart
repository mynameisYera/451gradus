import 'package:flutter/material.dart';

import '../../../core/theme/text_theme.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
    required this.onTap,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.isLogout,
  });
  final Function()? onTap;
  final IconData icon;
  final String title;
  final String subtitle;
  final bool? isLogout;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // icon
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff535353),
                  ),
                  child: Icon(
                    icon,
                    color: isLogout == true ? Colors.red : Colors.white,
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: isLogout == true
                          ? const TextStyle(
                              fontSize: 14,
                              color: Colors.red,
                              fontWeight: FontWeight.normal)
                          : TextStyles.miniText,
                    ),
                    subtitle.isNotEmpty
                        ? Text(
                            subtitle,
                            style: TextStyles.tileText,
                          )
                        : const SizedBox(),
                  ],
                ),
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}