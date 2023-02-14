import 'package:flutter/material.dart';
import 'package:learning_flutter/src/components/list_menu.dart';
import 'package:learning_flutter/src/navigator/defined_router.dart';

List<Map<String, dynamic>> items = [
  {
    'label': 'Separação',
    'icon': Icons.add_shopping_cart,
    'router': DefinedRouter.page1
  },
  {
    'label': "Trocar endereço",
    'icon': Icons.change_circle,
    'router': DefinedRouter.page2
  },
  {
    'label': "Reposição",
    'icon': Icons.move_down,
    'router': DefinedRouter.page2
  },
  {
    'label': "Inventário",
    'icon': Icons.content_paste,
    'router': DefinedRouter.page2
  },
  {
    'label': "Inventário Rotativo",
    'icon': Icons.rotate_left,
    'router': DefinedRouter.page2
  },
  {
    'label': "Cad. de Produtos",
    'icon': Icons.add_box,
    'router': DefinedRouter.page2
  },
  {
    'label': "Células WMS",
    'icon': Icons.move_to_inbox,
    'router': DefinedRouter.page2
  },
  {
    'label': "Produtividade",
    'icon': Icons.watch_later_outlined,
    'router': DefinedRouter.page2
  }
];

class HomeMenus extends StatelessWidget {
  const HomeMenus({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    return GridView(
      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: (itemWidth / itemHeight)
      ),
      children: [
        for (var item in items) Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1.0, // soften the shadow
                      spreadRadius: 0.0, //extend the shadow
                      offset: Offset(
                        0.0, // Move to right 5  horizontally
                        2.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
              ),
              height: 10.0,
          child: Center(
              child: ListMenu(
              label: item['label'],
              icon: item['icon'],
              router: item['router']
            ),
          )
        )
      ],
    );
  }
}