# PromptForge Mobile

**PromptForge Mobile** is a privacy-first Flutter app that empowers users to visually craft, reuse, and launch structured AI prompts—without needing to write a single line of text.

## 🧭 Project Vision

PromptForge aims to make prompt engineering accessible for everyone. With a clean, modular interface, users can build prompts from predefined blocks like **Intent**, **Context**, **Tone**, and **Constraints**, and send them directly to the ChatGPT iOS app.

No friction. No login. Just one tap.

## 📱 Core Features

- 🔧 Visual Prompt Builder (Intent, Context, Tone, Constraints, Input)
- ✍️ Live Prompt Preview
- 📋 1-Tap Copy to Clipboard
- 🚀 Launch into ChatGPT via Deeplink
- ⭐ Save Favorites & Prompt History
- 📦 Offline-first – no internet or account required
- 🧠 Model-agnostic (designed to support Claude, Gemini etc. in the future)

## 🧱 Architecture Overview

```
lib/
├── main.dart
├── app/                # App entry, routing, theming
├── core/               # Models, services, storage, utils
├── features/           # PromptBuilder, History, Sharing, Voice etc.
├── shared/             # Reusable widgets and layout elements
└── l10n/               # Localization
```

## ⚙️ Tech Stack

| Layer         | Technology                    |
|---------------|-------------------------------|
| UI & State    | Flutter + Provider             |
| Logic         | Dart (PromptCompiler, Services)|
| Storage       | Hive (local prompts, favorites)|
| Clipboard     | flutter_clipboard_manager      |
| App Launch    | url_launcher (Deep Linking)    |

## 🔐 Privacy & UX Principles

- ✅ No account, no tracking, no cloud storage
- ✅ 100% offline functionality
- ✅ Clear, focused, distraction-free UI

## 🚀 Getting Started

```bash
git clone https://github.com/lennarddaw/prompt_forge.git
cd prompt_forge
flutter pub get
flutter run
```

## 🌍 Future Features

- 🔗 Prompt Sharing (QR Code / Deep Link)
- 🎙️ Voice-driven Prompt Creation
- 🌐 ChatGPT response import (Overlay UI)
- 🔌 Plugin-based model support

## 🤝 Contributing

We’re building this project with long-term extensibility in mind. Contributions, ideas and feedback are welcome!

---

**Built by lennarddaw**
_This is a multi-year, long-term passion project to democratize the power of prompting._
