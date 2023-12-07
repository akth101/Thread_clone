import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thread_clone/BottomScreen.dart';

class FeedWidget extends StatelessWidget {
  const FeedWidget({super.key});

  void _onTap(BuildContext context) async {
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const BottomScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              child: Text('니꼬'),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text("slimjim"),
                    const SizedBox(
                      width: 220,
                    ),
                    GestureDetector(
                      onTap: () => _onTap(context),
                      child: const FaIcon(
                        FontAwesomeIcons.commentDots,
                        size: 14,
                      ),
                    ),
                  ],
                ),
                const Text("im following people ALL night who needs a"),
                const Text("meat stick follow?"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
