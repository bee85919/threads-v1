import 'package:flutter_riverpod/flutter_riverpod.dart'; // added
import 'package:threads/repos/settings_repo.dart';

import '../models/settings_model.dart';

// added
class SettingsViewModel extends Notifier<SettingsModel> {
  final SettingsRepository _repository;

  SettingsViewModel(this._repository);

  // added
  void setDarkMode(bool value) {
    _repository.setDarkMode(value);
    state = SettingsModel(darkMode: value);
  }

  @override
  SettingsModel build() {
    return SettingsModel(darkMode: _repository.isDarkMode());
  }
}

final settingsProvider = NotifierProvider<SettingsViewModel, SettingsModel>(
  () => throw UnimplementedError(),
);
