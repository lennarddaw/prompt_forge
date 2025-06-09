#!/bin/bash

# Basisverzeichnis setzen
mkdir -p lib

# App
mkdir -p lib/app/theme
touch lib/app/app.dart
touch lib/app/theme/theme.dart
touch lib/app/routes.dart

# Core
mkdir -p lib/core/{models,services,utils,constants,storage}
touch lib/core/models/prompt_block.dart
touch lib/core/services/prompt_compiler.dart
touch lib/core/services/chatgpt_launcher.dart
touch lib/core/utils/helpers.dart
touch lib/core/constants/strings.dart
touch lib/core/storage/local_storage.dart

# Features
mkdir -p lib/features/prompt_builder/{presentation,domain,application}
mkdir -p lib/features/{prompt_history,prompt_sharing,voice_prompting,response_capture,onboarding}
touch lib/features/prompt_builder/presentation/prompt_builder_screen.dart
touch lib/features/prompt_history/history_screen.dart
touch lib/features/onboarding/onboarding_screen.dart

# Shared
mkdir -p lib/shared/{widgets,layout}
touch lib/shared/widgets/custom_button.dart
touch lib/shared/layout/app_scaffold.dart

# Lokalisierung
mkdir -p lib/l10n
touch lib/l10n/l10n.dart

# Main Entry
touch lib/main.dart
