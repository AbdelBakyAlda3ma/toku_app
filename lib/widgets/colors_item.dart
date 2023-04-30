import 'package:flutter/material.dart';
import 'package:toku_app/constances.dart';
import 'package:toku_app/models/item_model.dart';
import 'package:audioplayers/audioplayers.dart';

class ColorsItem extends StatelessWidget {
  final Color? color;
  final ItemModel itemModel;
  const ColorsItem({super.key, this.color, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DecoratedBox(
        decoration: BoxDecoration(color: colorsViewBackgroundColor),
        child: Row(
          children: [
            SizedBox(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: praimaryBackgroundColor,
                ),
                child: Image.asset(
                  itemModel.image!,
                  height: 90,
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              '${itemModel.jpText}\n${itemModel.enText}',
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            const Spacer(),
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
      ),
    );
  }
}
