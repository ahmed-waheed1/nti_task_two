import 'package:flutter_bloc/flutter_bloc.dart';

import 'setting_page_state.dart';
class SettingPageCubit extends Cubit<SettingPageState> {
  SettingPageCubit() : super(SettingPageInitial());

  void toggleNotification(bool isEnabled) {
    emit(SettingPageNotificationToggled(isEnabled));
  }

  void toggleCloud(bool isEnabled) {
    emit(SettingPageCloudToggled(isEnabled));
  }
}
