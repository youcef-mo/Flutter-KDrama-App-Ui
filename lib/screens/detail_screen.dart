import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:k_drama_app/constant/them.dart';
import 'package:k_drama_app/models/movies.dart';
import 'package:k_drama_app/widgets/actors_list.dart';
import 'package:styled_widget/styled_widget.dart';

class DetailPage extends StatelessWidget {
  final Movie drama;
  const DetailPage({Key? key, required this.drama}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  drama.poster,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    LightColors.bg_color.withOpacity(0),
                    LightColors.bg_color.withOpacity(0.5),
                    LightColors.bg_color.withOpacity(1),
                    LightColors.bg_color.withOpacity(1),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  tileMode: TileMode.mirror,
                  // stops: const [1, .5, .5, 0],
                ),
              ),
              child: SingleChildScrollView(
                child: SafeArea(
                  minimum: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 400),
                      Text(drama.title,
                          style: const TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      Wrap(
                        children: _categoryCihip(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 50,
                        child: ActorsList(actors: drama.cast),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Synopsis',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      _buildStory(drama),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: const Icon(
              IconlyBold.bookmark,
              size: 18,
              color: Colors.white,
            )
                .padding(all: 5)
                .decorated(
                  color: Colors.white70.withOpacity(.3),
                  shape: BoxShape.circle,
                )
                .padding(top: 25, right: 10),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: const Icon(
              IconlyLight.arrow_left_2,
              size: 18,
              color: Colors.white,
            )
                .padding(all: 5)
                .decorated(
                  color: Colors.white70.withOpacity(.3),
                  shape: BoxShape.circle,
                )
                .gestures(onTap: () {
              Navigator.pop(context);
            }).padding(top: 25, left: 10),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: const Text(
                'Watch Now',
                style: TextStyle(color: Colors.white),
              ).padding(horizontal: 30, vertical: 15),
            )
                .decorated(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  color: Colors.pinkAccent,
                )
                .elevation(8)
                .padding(bottom: 10),
          )
        ],
      ),
    );
  }

  Widget _buildStory(Movie drama) {
    return SingleChildScrollView(
      child: RichText(
        text: TextSpan(
            text: drama.plot, style: const TextStyle(color: Colors.white70)),
      ),
    );
  }

  List<Widget> _categoryCihip() {
    return drama.genra
        .map(
          (x) => Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Chip(
              backgroundColor: LightColors.greyColor,
              label: Text(
                x,
                style: const TextStyle(
                  color: Colors.white70,
                ),
              ),

              // backgroundColor:
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ),
        )
        .toList();
  }
}
