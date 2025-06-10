class PromptBlock {
  final String intent;
  final String context;
  final String tone;
  final String input;
  final Map<String, dynamic> constraints;

  PromptBlock({
    required this.intent,
    required this.context,
    required this.tone,
    required this.input,
    required this.constraints,
  });

  PromptBlock copyWith({
    String? intent,
    String? context,
    String? tone,
    String? input,
    Map<String, dynamic>? constraints,
  }) {
    return PromptBlock(
      intent: intent ?? this.intent,
      context: context ?? this.context,
      tone: tone ?? this.tone,
      input: input ?? this.input,
      constraints: constraints ?? this.constraints,
    );
  }
}
