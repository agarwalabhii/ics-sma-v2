import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
 
part 'form_action.freezed.dart';

final formActionProvider = StateProvider<FormAction>((ref) => FormAction());
    
enum FormActionType {
  initial,
  save,
  publish,
  deleteDraft;
}

enum ActionLifeCycle {
  initiated,
  navigation,
  accepted,
  rejected,
}

enum SaveSubActionType {
  existing,
  draft,
  publish;
}

enum NavigationAction {
  home,
  next,
  previous;
}

@freezed
class FormAction with _$FormAction {
  const factory FormAction({ 
    @Default(FormActionType.initial) FormActionType type,
    @Default(ActionLifeCycle.initiated) ActionLifeCycle lifecyle,
    SaveSubActionType? saveSubActionType,
    DateTime? timestamp,
    int? creatorId,
    String? creatorName,
    NavigationAction? navigationAction,
  }) = _FormAction;
}

extension SaveFormAction on FormAction {
  static FormAction saveExisting({int? creatorId, String? creatorName, NavigationAction? navigationAction}) {
    return FormAction(
      type: FormActionType.save,
      saveSubActionType: SaveSubActionType.existing,
      timestamp: DateTime.now()..toUtc(),
      creatorId: creatorId,
      creatorName: creatorName,
      navigationAction: navigationAction,
    );
  }

  static FormAction saveAsDraft(int? creatorId, String? creatorName,  NavigationAction? navigationAction) {
    return FormAction(
      type: FormActionType.save,
      saveSubActionType: SaveSubActionType.draft,
      timestamp: DateTime.now().toUtc(),
      creatorId: creatorId,
      creatorName: creatorName,
      navigationAction: navigationAction,
    );
  }

  static FormAction publish(int? creatorId, String? creatorName, NavigationAction? navigationAction) {
    return FormAction(
      type: FormActionType.save,
      saveSubActionType: SaveSubActionType.publish,
      timestamp: DateTime.now().toUtc(),
      creatorId: creatorId,
      creatorName: creatorName,
      navigationAction: navigationAction,
    );
  }

  static FormAction deleteDraft({int? creatorId, String? creatorName}) {
    return FormAction(
      type: FormActionType.deleteDraft,
      timestamp: DateTime.now().toUtc(),
      creatorId: creatorId,
      creatorName: creatorName,
    );
  }

  FormAction saveReadyForNavigation() {
    return FormAction(
      type: FormActionType.save,
      lifecyle: ActionLifeCycle.navigation,
      saveSubActionType: SaveSubActionType.existing,
      timestamp: timestamp,
      creatorId: creatorId,
      creatorName: creatorName,
      navigationAction: navigationAction,
    );
  }
    
  FormAction saveAccepted() {
    return FormAction(
      type: FormActionType.save,
      lifecyle: ActionLifeCycle.accepted,
      saveSubActionType: SaveSubActionType.existing,
      timestamp: timestamp,
      creatorId: creatorId,
      creatorName: creatorName,
    );
  }

  FormAction saveRejected() {
    return FormAction(
      type: FormActionType.save,
      lifecyle: ActionLifeCycle.rejected,
      saveSubActionType: SaveSubActionType.existing,
      timestamp: timestamp,
      creatorId: creatorId,
      creatorName: creatorName,
    );
  }
}