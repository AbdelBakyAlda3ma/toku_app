import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/constances.dart';
import 'package:toku_app/models/item_model.dart';

class NumbersItem extends StatelessWidget {
  final Color? color;
  final ItemModel itemModel;
  const NumbersItem({super.key, this.color, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DecoratedBox(
        decoration: BoxDecoration(color: numbersViewBackgroundColor),
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
