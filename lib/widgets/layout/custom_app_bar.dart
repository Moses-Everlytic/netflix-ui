import 'package:flutter/material.dart';
import 'package:netflix_ui/bootstrap/assets.dart';
import 'package:netflix_ui/widgets/butons/app_bar_button.dart';
import 'package:netflix_ui/widgets/responsive.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffSet;

  const CustomAppBar({
    Key? key,
    this.scrollOffSet = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black
            .withOpacity((scrollOffSet / 350).clamp(0, 1).toDouble()),
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 24.0,
        ),
        child: const Responsive(
          mobile: _CustomAppBarMobile(),
          desktop: _CustomAppBarDesktop(),
        ));
  }
}

class _CustomAppBarMobile extends StatelessWidget {
  const _CustomAppBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo0),
          const SizedBox(width: 12.0),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppBarButton(title: 'TV Shows', onTap: () {}),
                AppBarButton(title: 'Movies', onTap: () {}),
                AppBarButton(title: 'My List', onTap: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomAppBarDesktop extends StatelessWidget {
  const _CustomAppBarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo1),
          const SizedBox(width: 12.0),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppBarButton(title: 'Home', onTap: () {}),
                AppBarButton(title: 'TV Shows', onTap: () {}),
                AppBarButton(title: 'Movies', onTap: () {}),
                AppBarButton(title: 'Latest', onTap: () {}),
                AppBarButton(title: 'My List', onTap: () {}),
              ],
            ),
          ),
          MediaQuery.of(context).size.width < 1200
              ? const SizedBox(width: 180.0)
              : const Spacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.search),
                  iconSize: 28.0,
                  color: Colors.white,
                  onPressed: () {},
                ),
                AppBarButton(title: 'KIDS', onTap: () {}),
                AppBarButton(title: 'DVD', onTap: () {}),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.card_giftcard),
                  iconSize: 28.0,
                  color: Colors.white,
                  onPressed: () {},
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.notifications),
                  iconSize: 28.0,
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
