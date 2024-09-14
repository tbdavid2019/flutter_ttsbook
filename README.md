
# 聖經經文 TTS 應用程序 / Bible Verse TTS App

這是一個使用 Flutter 開發的簡單聖經經文應用程序。它隨機顯示聖經經文，並允許用戶通過點擊文本來聽取經文的朗讀。

This is a simple Bible verse application developed using Flutter. It displays random Bible verses and allows users to hear the verses read aloud by tapping on the text.

## 功能特點 / Features

- 隨機顯示聖經經文 / Randomly display Bible verses
- 點擊經文文本即可聽取 TTS 朗讀 / Tap on the verse text to hear TTS reading
- 支持搖晃設備來更換經文 / Support shaking the device to change verses
- 簡潔直觀的用戶界面 / Clean and intuitive user interface

## 技術棧 / Tech Stack

- Flutter
- Dart
- 使用的主要包 / Main packages used:
  - http: 用於 API 請求 / for API requests
  - flutter_tts: 用於文本到語音轉換 / for text-to-speech conversion
  - shake: 用於檢測設備搖晃 / for detecting device shaking

## 安裝 / Installation

1. 確保你已經安裝了 Flutter SDK。如果沒有，請參考 [Flutter 官方文檔](https://flutter.dev/docs/get-started/install)。
   
   Ensure you have Flutter SDK installed. If not, refer to the [Flutter official documentation](https://flutter.dev/docs/get-started/install).

2. 克隆此倉庫 / Clone this repository:
   ```
   git clone https://github.com/tbdavid2019/flutter_ttsbook.git
   ```

3. 進入項目目錄 / Enter the project directory:
   ```
   cd flutter_ttsbook
   ```

4. 獲取依賴 / Get dependencies:
   ```
   flutter pub get
   ```

5. 運行應用 / Run the app:
   ```
   flutter run
   ```

## 使用說明 / Usage

- 啟動應用後，屏幕上會顯示一段隨機的聖經經文。
  After launching the app, a random Bible verse will be displayed on the screen.

- 點擊經文文本即可聽取 TTS 朗讀。
  Tap on the verse text to hear it read aloud via TTS.

- 搖晃設備可以更換顯示的經文。
  Shake the device to change the displayed verse.

## 貢獻 / Contributing

歡迎提出問題和拉取請求。對於重大更改，請先開一個 issue 討論您想要更改的內容。

Issues and pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## 許可證 / License

[MIT](https://choosealicense.com/licenses/mit/)
