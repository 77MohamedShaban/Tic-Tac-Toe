# Tic Tac Toe Game 🎮

A modern, sleek, and interactive **Tic Tac Toe** game built using **Flutter**. This project features a polished UI, score tracking, and smooth gameplay logic for two players.

<p align="center">
  <img src="https://github.com/user-attachments/assets/d79235cd-693a-4caf-afe0-66f7f2d71e87" height="300"/>
  <img src="https://github.com/user-attachments/assets/ac105e86-46c5-44ec-ba5c-22affe68bbeb" height="300"/>
  <img src="https://github.com/user-attachments/assets/5909496f-006b-4121-a172-74f371867c2b" height="300"/>
</p>

## ✨ Features

*   **Player Choice:** Choose to play as 'X' or 'O' from the home screen.
*   **Real-time Score Tracking:** Keeps track of Player 1 and Player 2 scores throughout the session.
*   **Smart Game Logic:** Automatically detects wins (rows, columns, and diagonals) and draws.
*   **Interactive UI:** Beautifully designed board with responsive buttons and smooth transitions.
*   **Auto-Reset:** The game resets automatically after a win or a draw so you can keep playing without interruption.
*   **Custom Splash Screen:** Professional entry with a native splash screen.

## 🚀 Getting Started

### Prerequisites

*   Flutter SDK: [Install Flutter](https://docs.flutter.dev/get-started/install)
*   Dart SDK

### Installation

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/your-username/tic_tac_toe.git
    ```
2.  **Navigate to the project directory:**
    ```bash
    cd tic_tac_toe
    ```
3.  **Get dependencies:**
    ```bash
    flutter pub get
    ```
4.  **Run the app:**
    ```bash
    flutter run
    ```

## 🛠 Tech Stack & Packages

*   **Framework:** [Flutter](https://flutter.dev/)
*   **Language:** [Dart](https://dart.dev/)
*   **SVG Support:** `flutter_svg` for high-quality icons.
*   **Splash Screen:** `flutter_native_splash` for a native feel during boot.

## 📁 Project Structure

```text
lib/
├── core/
│   └── reusable_component/   # Custom reusable widgets like backgrounds
├── ui/
│   ├── home/                 # Home screen and player selection logic
│   │   ├── screen/
│   │   └── widgets/
│   └── board/                # Main game board and gameplay logic
│       ├── screen/
│       └── widgets/
└── main.dart                 # Application entry point & routing
```

## 📝 How to Play

1.  Open the app and select your symbol (X or O).
2.  Player 1 starts first.
3.  Tap on any empty cell on the grid to place your symbol.
4.  The first player to get 3 of their symbols in a row (up, down, across, or diagonally) wins 10 points!
5.  If all 9 cells are filled and no one has 3 in a row, it's a draw.

---

### Made by [Mohamed Shaban](https://github.com/77MohamedShaban) 🚀
