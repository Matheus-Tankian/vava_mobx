import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vava_mobx/src/core/app_icons.dart';
import 'package:vava_mobx/src/repository/agents/agents.dart';
import 'package:vava_mobx/src/views/agent_list/agent_list.dart';
import 'package:vava_mobx/src/views/home/home_viewmodel.dart';
import 'package:vava_mobx/src/views/more/more_view.dart';
import 'package:vava_mobx/src/views/new_one/new_one_view.dart';
import 'package:vava_mobx/src/widgets/button_list.dart';

final homeViewModel = HomeViewlModel(AgentReposityImpl());

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Observer(
        builder: (_) => Visibility(
          visible: homeViewModel.loadPage == false,
          replacement: const Center(
            child: CircularProgressIndicator(),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
              top: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppIcons.logo,
                ),
                const SizedBox(height: 20),
                Center(
                  child: Text(
                    'Escolha seu',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                Center(
                  child: Text(
                    'agente favorito',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                const SizedBox(height: 6),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: ButtonList(
                    onItemSelected: (value) {
                      homeViewModel.changeIndexScreen(value);
                    },
                  ),
                ),
                Visibility(
                  visible: homeViewModel.indexScreen == 0,
                  child: AgentsList(
                    agentensList: homeViewModel.agentensList,
                  ),
                ),
                Visibility(
                  visible: homeViewModel.indexScreen == 1,
                  child: const NewOneView(),
                ),
                Visibility(
                  visible: homeViewModel.indexScreen == 2,
                  child: const MoreView(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
