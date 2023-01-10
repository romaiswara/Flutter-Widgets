import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/config.dart';
import 'package:flutter_widgets/model/model.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Material Widget'),
      ),
      body: ListView(
        children: List.generate(
          MainMenuModel.allMenus.length,
          (i) {
            MainMenuModel menu = MainMenuModel.allMenus[i];
            return Theme(
              data: ThemeConfig.theme.copyWith(
                dividerColor: Colors.transparent,
              ),
              child: ExpansionTile(
                // initiallyExpanded: i == 0,
                tilePadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                childrenPadding: const EdgeInsets.only(
                  left: 20,
                  right: 8,
                ),
                title: Align(
                  alignment: const Alignment(-1.2, 0),
                  child: Text(menu.title),
                ),
                leading: Icon(menu.iconData),
                children: List.generate(
                  menu.subMenus.length,
                  (j) {
                    SubMenu subMenu = menu.subMenus[j];
                    return ListTile(
                      title: Text(subMenu.name),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          subMenu.routeName,
                        );
                      },
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
