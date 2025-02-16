# 🚗 GarageApp

GarageApp is an iOS application that allows users to **store and view car details** seamlessly. Users can enter their car's make, model, year, color, and kilometers, which are stored and retrieved using a global object in `AppDelegate`. 

## 📌 Features
- **Subpage 1:** Enter car details (make, model, year, color, kilometers).
- **Confirmation Alert:** Ensures users confirm before saving.
- **Data Persistence:** Saves car details globally via `AppDelegate`.
- **Subpage 2:** Displays saved car details.
- **Smooth Navigation:** Uses `UINavigationController` for seamless transitions.

## 🚀 Installation & Setup
1. **Clone the repository**
   ```sh
   git clone https://github.com/lambasid/GarageApp.git
   cd GarageApp

2. **Open in Xcode**

1. Open `GarageApp.xcodeproj` in Xcode.
2. Ensure **iOS Deployment Target** is set correctly.

## ▶️ Run the App

1. Select an **iOS Simulator** or **physical device**.
2. Click **Run** ▶️ to launch the app.

## 📖 Usage

1. Open the app and navigate to **Subpage 1**.
2. Enter car details:
   - **Make** (Text)
   - **Model** (Text)
   - **Year** (Numbers only)
   - **Color** (Choose from 5 options)
   - **KMs Driven** (Numbers only)
3. Click **Submit**, confirm in the alert, and save details.
4. Click **"Go to Display Page"** to view saved car details.
5. Return to **Subpage 1** to update details if needed.

## 🛠️ Technologies Used

- **Swift** (UIKit)
- **Xcode**
- **AppDelegate** for global data storage
- **Storyboards & Auto Layout**
- **UINavigationController** for navigation

## 📝 Project Structure

```bash
📂 GarageApp
 ├── 📂 GarageApp
 │   ├── AppDelegate.swift
 │   ├── Car.swift         # Car Model
 │   ├── CarDetailsViewController.swift  # Subpage 1 (Input)
 │   ├── CarDetailsDisplayViewController.swift  # Subpage 2 (Display)
 │   ├── Main.storyboard   # UI Layout
 │   ├── Assets.xcassets   # Images & Icons
 │   ├── Info.plist
 ├── GarageApp.xcodeproj
 ├── README.md
