## 🚗 GarageApp

GarageApp is an iOS application that allows users to **store and view car details** seamlessly. Users can enter their car's make, model, year, color, and kilometers, which are stored and retrieved using a global object in `AppDelegate`. This iOS app is designed to **work flawlessly on all devices** and has be tested on multiple simulators.

## 📌 App Structure

The app consists of **a home page** and **three sub-pages**:

1. **Home Page**  
   - Redirects to **Subpage 1** and **Subpage 2**.

2. **Subpage 1: Car Details Input**
   - Allows the user to enter car details:
     - **Make** (Text)
     - **Model** (Text)
     - **Year** (Numbers only)
     - **Color** (Segmented control with 5 options)
     - **Kilometers Driven** (Numbers only)
   - A **Submit Button** triggers a confirmation alert (`Yes/No`).
   - If confirmed, the data is **saved into an object**.
   - The object is stored and referenced through `AppDelegate`.

3. **Subpage 2: Car Details Display**
   - Displays **saved car details** from **Subpage 1**.
   - References the object stored in `AppDelegate`.
   - Contains a **link to Subpage 3**.

4. **Subpage 3: Animated Image Display**
   - **Image 1**: Uses an `UIImageView` slideshow displaying **5 car images on repeat**.
   - **Image 2**: Uses a `CALayer` with **Basic Animations**:
     - Fades **in and out**.
     - Rotates **continuously**.
    
## 🚀 Installation & Setup
1. **Clone the repository**
   ```sh
   git clone https://github.com/lambasid/GarageApp.git
   cd GarageApp
   ```
2. **Open in Xcode**
    - Open ```GarageApp.xcodeproj``` in Xcode.
   - Ensure **iOS Deployment Target** is set correctly.
     
 3. **Run the App**
- Select an iOS Simulator or physical device.
- Click **Run** ▶️ to launch the app.

## 🎥 Video Tutorial

Watch the full tutorial on YouTube:  
[![GarageApp iOS Tutorial](<img width="692" alt="Screenshot 2025-02-18 at 11 56 09 PM" src="https://github.com/user-attachments/assets/8ffbbef6-c130-4686-a686-95ba5df00bfc" />)](https://youtube.com/shorts/L0rDvmYQRJU?feature=share)  

## 🎨 UI/UX Design Requirements

- **Attractive UI** with proper graphics on all pages.
- **Navigation Bars & Back Buttons** present on all sub-pages.
- **Background Music** play on **all pages**.

## 🛠️ Development Requirements

- **Auto Layout & Constraints** for multi-device support.
- **Navigation Controller** for smooth page transitions.
- **Use of AppDelegate** for persistent data reference.
- **Animations with Core Animation (`CALayer`)**.
- **Background audio playback support**.

## 💡 Future Improvements

- **Persistent Storage** (Use `UserDefaults` or `CoreData` to store data permanently).
- **Edit & Delete Features** for car details.
- **Dark Mode Support**.
- **Enhanced UI Design** with animations.

## 🤝 Contributing

Contributions are welcome! Feel free to **fork the repo** and submit a pull request.

### Steps to Contribute:
1. **Fork the repository.**
2. **Create a new branch:**
   ```sh
   git checkout -b feature-branch
   ```
3. **Commit your changes:**
```sh
git commit -m "Add new feature"
```
4. **Push to your fork and submit a PR.**

## 📄 License
This project is licensed under the **MIT License**

--
- **🔗 Repo Link**: [GarageApp](https://github.com/lambasid/GarageApp)
- **💬 Questions?** Open an issue or contact [lambasid](mailto:lambasid@sheridancollege.ca)

---

### **📌 What’s Included?**
✅ [**Clear project description**](#-garageapp)  
✅ [**Installation & usage guide**](#-installation--setup)  
✅ [**Project structure overview**](#-app-structure)  
✅ [**Future improvements & contribution guide**](#-future-improvements)  
✅ [**Repo link & contact info**](#-license)



