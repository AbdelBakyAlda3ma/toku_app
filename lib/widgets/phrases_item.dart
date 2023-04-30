import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/constances.dart';
import 'package:toku_app/models/item_model.dart';

class PhrasesItem extends StatelessWidget {
  final Color? color;
  final ItemModel itemModel;
  const PhrasesItem({super.key, this.color, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      color: phrasesViewBackgroundColor,
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: FittedBox(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "${itemModel.jpText}\n${itemModel.enText}",
                    overflow: TextOverflow.visible,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource(itemModel.sound));
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
