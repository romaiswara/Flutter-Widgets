import 'package:flutter/material.dart';
import 'package:flutter_widgets/constant/constant.dart';

class CardOverlapScreen extends StatelessWidget {
  const CardOverlapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          /// image with app bar icon
          Stack(
            fit: StackFit.passthrough,
            children: [
              /// image
              Container(
                height: 256,
                foregroundDecoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                ),
                child: Image.asset(
                  'assets/images/photo_1.jpg',
                  fit: BoxFit.cover,
                ),
              ),

              /// center icon
              SizedBox(
                height: 256,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 60,
                    ),
                    Text(
                      "New Video",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )
                  ],
                ),
              ),

              /// app bar icon
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.search, color: Colors.white),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_vert, color: Colors.white),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),

          /// content
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            transform: Matrix4.translationValues(0, -50, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                /// card facilities
                _card(
                  context,
                  title: 'Facilities',
                  content: Column(
                    children: [
                      _facilitiesWidget(
                        title: 'Food & Cafe',
                        icon: Icons.local_cafe,
                      ),
                      const SizedBox(height: 8),
                      _facilitiesWidget(
                        title: 'Fresh Air',
                        icon: Icons.local_florist,
                      ),
                      const SizedBox(height: 8),
                      _facilitiesWidget(
                        title: 'Parking Area',
                        icon: Icons.airport_shuttle,
                      ),
                      const SizedBox(height: 8),
                      _facilitiesWidget(
                        title: 'Cozy Canopy',
                        icon: Icons.beach_access,
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                /// card address
                _card(
                  context,
                  title: 'Address',
                  content: Text(
                    '14321 Saddle Wood Dr, North Little Rock \nAR, 72117',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                /// card description
                _card(
                  context,
                  title: 'Description',
                  content: Text(
                    StringConstant.longLoremIpsum,
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _card(
    BuildContext context, {
    required String title,
    TextStyle? titleStyle,
    required Widget content,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
      color: Colors.white,
      elevation: 2,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /// title
            Text(
              title,
              style: titleStyle ?? const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            content,
          ],
        ),
      ),
    );
  }

  Widget _facilitiesWidget({required String title, required IconData icon}) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.grey[500],
        ),
        Container(width: 10),
        Text(
          title,
          style: TextStyle(
            color: Colors.grey[500],
          ),
        )
      ],
    );
  }
}
