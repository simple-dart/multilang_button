import 'package:simple_dart_button/simple_dart_button.dart';
import 'package:simple_dart_multilang_controller/simple_dart_multilang_controller.dart';

class MultilangButton extends Button {
  String _langKey = '';
  String _tooltipLangKey = '';

  set langKey(String value) {
    _langKey = value;
    reRender();
  }

  String get langKey => _langKey;

  set tooltipLangKey(String value) {
    _tooltipLangKey = value;
    reRender();
  }

  String get tooltipLangKey => _tooltipLangKey;

  @override
  void reRender() {
    if (langKey.isNotEmpty) {
      caption = multilangController.translate(_langKey);
    }
    if (tooltipLangKey.isNotEmpty) {
      tooltip = multilangController.translate(_tooltipLangKey);
    }
  }
}
