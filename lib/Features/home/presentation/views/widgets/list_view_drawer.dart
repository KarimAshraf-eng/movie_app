import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:movie_app/Features/home/presentation/managers/color/cupit.dart';
import 'package:movie_app/Features/home/presentation/managers/color/state.dart';
import 'package:movie_app/core/Utils/app_routers.dart';
import 'package:movie_app/core/Utils/constants.dart';

class ListViewDrawer extends StatelessWidget {
  const ListViewDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorCubit, ColorState>(builder: (context, state) {
      var cubit = context.read<ColorCubit>();
      int selectedIndex = 0;
      if (state is ChangedSelected) {
        selectedIndex = state.selected;
      }
      return ListView(
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: ListTile(
              leading: Image.asset("images/profile.png"),
            ),
          ),
          ListTile(
            leading: const Icon(BoxIcons.bxs_hot),
            trailing: const Text(
              'أخر التحديثات',
              style: listTileStyle,
            ),
            selected: selectedIndex == 0,
            selectedColor: selectedIndex == 0 ? Colors.red : Colors.white,
            onTap: () {
              cubit.changedSelected(0);
              GoRouter.of(context).pop();
            },
          ),
          ListTile(
            leading: const Icon(BoxIcons.bx_list_ul),
            trailing: const Text(
              'لائحه الأفلام',
              style: listTileStyle,
            ),
            selected: selectedIndex == 1,
            selectedColor: selectedIndex == 1 ? Colors.red : Colors.white,
            onTap: () {
              cubit.changedSelected(1);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.favorite),
            trailing: const Text(
              'أفلامى المفضله',
              style: listTileStyle,
            ),
            selected: selectedIndex == 2,
            selectedColor: selectedIndex == 2 ? Colors.red : Colors.white,
            onTap: () {
              cubit.changedSelected(2);
            },
          ),
          ListTile(
            leading: const Icon(Icons.watch_later_outlined),
            trailing: const Text(
              "أخر المشاهدات",
              style: listTileStyle,
            ),
            selected: selectedIndex == 3,
            selectedColor: selectedIndex == 3 ? Colors.red : Colors.white,
            onTap: () {
              cubit.changedSelected(3);
            },
          ),
          ListTile(
            leading: const Icon(BoxIcons.bxs_cloud_download),
            trailing: const Text(
              "تحميلاتى",
              style: listTileStyle,
            ),
            selected: selectedIndex == 4,
            selectedColor: selectedIndex == 4 ? Colors.red : Colors.white,
            onTap: () {
              cubit.changedSelected(4);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            trailing: const Text(
              "الأعدادات",
              style: listTileStyle,
            ),
            selected: selectedIndex == 5,
            selectedColor: selectedIndex == 5 ? Colors.red : Colors.white,
            onTap: () {
              cubit.changedSelected(5);
              GoRouter.of(context).push(AppRouters.settinghView,);
            },
          ),
          ListTile(
            leading: const Icon(BoxIcons.bx_log_in),
            trailing: const Text(
              "تسجيل دخول",
              style: listTileStyle,
            ),
            selected: selectedIndex == 6,
            selectedColor: selectedIndex == 6 ? Colors.red : Colors.white,
            onTap: () {
              cubit.changedSelected(6);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            trailing: const Text(
              "تسجيل خروج",
              style: listTileStyle,
            ),
            selected: selectedIndex == 7,
            selectedColor: selectedIndex == 7 ? Colors.red : Colors.white,
            onTap: () {
              cubit.changedSelected(7);
            },
          ),
        ],
      );
    });
  }
}
