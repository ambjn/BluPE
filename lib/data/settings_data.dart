import 'package:blupe/model/contacts_model.dart';
import 'package:blupe/model/settings_model.dart';
import 'package:flutter/material.dart';

List<SettingsModel> getSettings() {
  List<SettingsModel> settings = [];
  SettingsModel settingsModel = SettingsModel();

  settingsModel = SettingsModel();
  settingsModel.prefixIcon = const Icon(Icons.verified_user);
  settingsModel.myTitle = "Personal Info";
  settingsModel.trailingIcon =
      const Icon(Icons.arrow_forward_ios_sharp, color: Colors.blue);
  settings.add(settingsModel);

  settingsModel = SettingsModel();
  settingsModel.prefixIcon = const Icon(Icons.qr_code_2);
  settingsModel.myTitle = "My QR Code";
  settingsModel.trailingIcon =
      const Icon(Icons.arrow_forward_ios_sharp, color: Colors.blue);
  settings.add(settingsModel);

  settingsModel = SettingsModel();
  settingsModel.prefixIcon = const Icon(Icons.card_membership);
  settingsModel.myTitle = "Banks and Cards";
  settingsModel.trailingIcon =
      const Icon(Icons.arrow_forward_ios_sharp, color: Colors.blue);
  settings.add(settingsModel);

  settingsModel = SettingsModel();
  settingsModel.prefixIcon = const Icon(Icons.attach_money);
  settingsModel.myTitle = "Payment Preferences";
  settingsModel.trailingIcon =
      const Icon(Icons.arrow_forward_ios_sharp, color: Colors.blue);
  settings.add(settingsModel);

  settingsModel = SettingsModel();
  settingsModel.prefixIcon = const Icon(Icons.roundabout_right);
  settingsModel.myTitle = "Automatic Payments";
  settingsModel.trailingIcon =
      const Icon(Icons.arrow_forward_ios_sharp, color: Colors.blue);
  settings.add(settingsModel);

  settingsModel = SettingsModel();
  settingsModel.prefixIcon = const Icon(Icons.login);
  settingsModel.myTitle = "Login and Security";
  settingsModel.trailingIcon =
      const Icon(Icons.arrow_forward_ios_sharp, color: Colors.blue);
  settings.add(settingsModel);

  settingsModel = SettingsModel();
  settingsModel.prefixIcon = const Icon(Icons.notifications_active);
  settingsModel.myTitle = "Notifications";
  settingsModel.trailingIcon =
      const Icon(Icons.arrow_forward_ios_sharp, color: Colors.blue);
  settings.add(settingsModel);

  return settings;
}
