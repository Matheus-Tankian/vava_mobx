// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewlModel on HomeViewlModelBase, Store {
  late final _$indexScreenAtom =
      Atom(name: 'HomeViewlModelBase.indexScreen', context: context);

  @override
  int get indexScreen {
    _$indexScreenAtom.reportRead();
    return super.indexScreen;
  }

  @override
  set indexScreen(int value) {
    _$indexScreenAtom.reportWrite(value, super.indexScreen, () {
      super.indexScreen = value;
    });
  }

  late final _$agentensListAtom =
      Atom(name: 'HomeViewlModelBase.agentensList', context: context);

  @override
  List<AgentsModel> get agentensList {
    _$agentensListAtom.reportRead();
    return super.agentensList;
  }

  @override
  set agentensList(List<AgentsModel> value) {
    _$agentensListAtom.reportWrite(value, super.agentensList, () {
      super.agentensList = value;
    });
  }

  late final _$loadPageAtom =
      Atom(name: 'HomeViewlModelBase.loadPage', context: context);

  @override
  bool get loadPage {
    _$loadPageAtom.reportRead();
    return super.loadPage;
  }

  @override
  set loadPage(bool value) {
    _$loadPageAtom.reportWrite(value, super.loadPage, () {
      super.loadPage = value;
    });
  }

  late final _$loadFunctionsAsyncAction =
      AsyncAction('HomeViewlModelBase.loadFunctions', context: context);

  @override
  Future<void> loadFunctions() {
    return _$loadFunctionsAsyncAction.run(() => super.loadFunctions());
  }

  late final _$HomeViewlModelBaseActionController =
      ActionController(name: 'HomeViewlModelBase', context: context);

  @override
  void changeLoadPage(bool value) {
    final _$actionInfo = _$HomeViewlModelBaseActionController.startAction(
        name: 'HomeViewlModelBase.changeLoadPage');
    try {
      return super.changeLoadPage(value);
    } finally {
      _$HomeViewlModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeAgentensList(List<AgentsModel> value) {
    final _$actionInfo = _$HomeViewlModelBaseActionController.startAction(
        name: 'HomeViewlModelBase.changeAgentensList');
    try {
      return super.changeAgentensList(value);
    } finally {
      _$HomeViewlModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeIndexScreen(int value) {
    final _$actionInfo = _$HomeViewlModelBaseActionController.startAction(
        name: 'HomeViewlModelBase.changeIndexScreen');
    try {
      return super.changeIndexScreen(value);
    } finally {
      _$HomeViewlModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
indexScreen: ${indexScreen},
agentensList: ${agentensList},
loadPage: ${loadPage}
    ''';
  }
}
