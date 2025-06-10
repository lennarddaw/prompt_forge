import 'package:flutter/material.dart';
import '../../../core/models/prompt_block.dart';

class PromptProvider with ChangeNotifier {
  PromptBlock _prompt = PromptBlock(
    intent: 'Explain',
    context: 'Biology',
    tone: 'Friendly',
    input: '',
    constraints: {
      'max_tokens': '300',
      'target_level': 'High School',
    },
  );

  PromptBlock get prompt => _prompt;

  void updateIntent(String value) {
    _prompt = _prompt.copyWith(intent: value);
    notifyListeners();
  }

  void updateContext(String value) {
    _prompt = _prompt.copyWith(context: value);
    notifyListeners();
  }

  void updateTone(String value) {
    _prompt = _prompt.copyWith(tone: value);
    notifyListeners();
  }

  void updateInput(String value) {
    _prompt = _prompt.copyWith(input: value);
    notifyListeners();
  }

  void updateConstraint(String key, String value) {
    final updatedConstraints = Map<String, dynamic>.from(_prompt.constraints);
    updatedConstraints[key] = value;
    _prompt = _prompt.copyWith(constraints: updatedConstraints);
    notifyListeners();
  }
}
