import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/styles_app.dart';

class Mycard extends StatelessWidget {
  const Mycard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: AspectRatio(
        aspectRatio: 420 / 215,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(Assets.imagesMaskgroup),
              fit: BoxFit.fill,
            ),
            color: Color(0xff4EB7F2),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.only(
                  right: 32,
                  left: 31,
                  top: 16,
                  bottom: 0,
                ),
                title: Text(
                  'Name card',
                  style: AppStyles.textRegular16.copyWith(color: Colors.white),
                ),
                subtitle: Text('Syah Bandi', style: AppStyles.textMedium20),
                trailing: SvgPicture.asset(Assets.imagesGallery),
              ),
              Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.only(right: 24, bottom: 27),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '0918 8124 0042 8129',
                      style: AppStyles.textSimiBold24.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '12/20 - 124',
                      style: AppStyles.textRegular16.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
