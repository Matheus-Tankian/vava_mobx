import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:vava_mobx/main.dart';
import 'package:vava_mobx/src/models/agents_model.dart';
import 'package:vava_mobx/src/repository/agents/agents.dart';
import 'package:vava_mobx/src/widgets/snackbar_widget.dart';

part 'home_viewmodel.g.dart';

class HomeViewlModel = HomeViewlModelBase with _$HomeViewlModel;

abstract class HomeViewlModelBase with Store {
  final AgentReposity _agentReposity;

  HomeViewlModelBase(this._agentReposity) {
    loadFunctions();
  }

  @observable
  int indexScreen = 0;

  @observable
  List<AgentsModel> agentensList = [];

  @observable
  bool loadPage = false;

  @action
  Future<void> loadFunctions() async {
    await getAgentsList();
  }

  @action
  void changeLoadPage(bool value) {
    loadPage = value;
  }

  @action
  void changeAgentensList(List<AgentsModel> value) {
    agentensList = value;
  }

  @action
  void changeIndexScreen(int value) {
    indexScreen = value;
  }

  Future<void> getAgentsList() async {
    try {
      changeLoadPage(true);
      final result = await _agentReposity.getAllAgents();
      changeAgentensList(result);
      changeLoadPage(false);
    } catch (e) {
      changeLoadPage(false);
      showSnackbar('$e', true);
    }
  }

  void showSnackbar(String title, bool erro) {
    showSnackBarMessage(
      navigationApp.currentContext!,
      message: title,
      backgroundColor: erro ? Colors.red : Colors.green,
      duration: const Duration(seconds: 2),
    );
  }
}
