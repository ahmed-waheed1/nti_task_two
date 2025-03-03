
import 'package:equatable/equatable.dart';

abstract class SettingPageState extends Equatable {
  const SettingPageState();

  @override
  List<Object> get props => [];
}

class SettingPageInitial extends SettingPageState {}

class SettingPageNotificationToggled extends SettingPageState {
  final bool isEnabled;

  const SettingPageNotificationToggled(this.isEnabled);

  @override
  List<Object> get props => [isEnabled];
}

class SettingPageCloudToggled extends SettingPageState {
  final bool isEnabled;

  const SettingPageCloudToggled(this.isEnabled);

  @override
  List<Object> get props => [isEnabled];
}
