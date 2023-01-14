import 'package:flutter/material.dart';
import 'package:flutter_widgets/model/model.dart';

class CardTimelineScreen extends StatelessWidget {
  const CardTimelineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Timeline Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        children: List.generate(
          TimelineModel.timelines.length,
          (index) {
            TimelineModel timeline = TimelineModel.timelines[index];
            return Container(
              margin: EdgeInsets.only(top: index == 0 ? 0 : 16),
              child: _cardTimeline(context, timeline: timeline),
            );
          },
        ),
      ),
    );
  }

  Widget _cardTimeline(
    BuildContext context, {
    required TimelineModel timeline,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 12),

          /// profile
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(timeline.profile),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        timeline.name,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.grey[900],
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        timeline.time,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                const Icon(Icons.more_horiz),
              ],
            ),
          ),

          const SizedBox(height: 16),

          /// description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              timeline.description,
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ),

          const SizedBox(height: 12),

          /// photo
          Image.asset(
            timeline.image,
            height: 250,
            fit: BoxFit.cover,
          ),

          const SizedBox(height: 12),

          /// total likes
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              timeline.likes,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.grey[500],
              ),
            ),
          ),

          const SizedBox(height: 12),

          /// icon buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.grey[500],
                ),
                const SizedBox(width: 8),
                Icon(
                  Icons.mode_comment_outlined,
                  color: Colors.grey[500],
                ),
                const SizedBox(width: 8),
                Icon(
                  Icons.share_outlined,
                  color: Colors.grey[500],
                ),
                const SizedBox(width: 8),
                const Spacer(),
                const SizedBox(width: 8),
                Icon(
                  Icons.bookmark,
                  color: Colors.grey[500],
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          /// comments
          Column(
            children: List.generate(
              timeline.comments.length > 2 ? 2 : timeline.comments.length,
              (index) {
                CommentModel comment = timeline.comments[index];
                return Container(
                  padding: EdgeInsets.only(
                    top: index == 0 ? 0 : 12,
                  ),
                  child: _cardComment(
                    context,
                    comment: comment,
                  ),
                );
              },
            ),
          ),

          if (timeline.comments.length > 2) ...[
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextButton(
                child: const Text('View all comment'),
                onPressed: () {},
              ),
            ),
          ],

          const SizedBox(height: 12),
        ],
      ),
    );
  }

  Widget _cardComment(BuildContext context, {required CommentModel comment}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(comment.image),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  comment.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.grey[900],
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  comment.description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
