import 'package:flutter/material.dart';
import 'package:k_drama_app/models/movies.dart';
import 'package:styled_widget/styled_widget.dart';

class ActorsList extends StatelessWidget {
  final List<Actor> actors;
  const ActorsList({Key? key, required this.actors}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(right: 10),
        itemCount: actors.length,
        itemBuilder: (context, index) => actorTiel(actors[index]));
  }

  Widget actorTiel(Actor actor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage(actor.image),
          radius: 25,
        ),
        const SizedBox(
          width: 8,
        ),
        [
          Text(
            actor.name,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
          Text(
            actor.realname,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white60,
            ),
          ),
        ].toColumn(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center)
      ].toRow(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center),
    );
  }
}
