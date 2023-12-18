import 'package:cached_network_image/cached_network_image.dart';
import 'package:cocktail_mix_app/model/cocktail.dart';
import 'package:flutter/material.dart';

class CocktailWidget extends StatelessWidget {
  const CocktailWidget({super.key, required this.cocktail});
  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: Colors.transparent,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(
                cocktail.photo!,
              ),
            ),
          ),
          height: 275,
        ),
        Container(
          height: 275,
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Colors.white,
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Color(0xFF333333),
                  ],
                  stops: [
                    -0,
                    1.0
                  ])),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(cocktail.name!,
                      style: const TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 20)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(cocktail.description1!,
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 14)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    getStars(),
                    Container(
                      width: 80,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)),
                      child: const Icon(Icons.chevron_right),
                    )
                  ],
                )
              ]),
        )
      ],
    );
  }
}

Widget getStars() {
  List<Widget> list = [];
  for (var i = 0; i < 4; i++) {
    list.add(Padding(
      padding: const EdgeInsets.only(right: 4),
      child: Image.asset('assets/icons/full_star.png'),
    ));
  }
  list.add(Padding(
    padding: const EdgeInsets.only(right: 16),
    child: Image.asset('assets/icons/half_star.png'),
  ));

  return Row(
    children: [
      ...list,
      const Text('4.5',
          style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 16)),
    ],
  );
}
