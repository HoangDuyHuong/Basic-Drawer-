Flutter Drawer Navigation Example
A simple Flutter project showing how to implement a Drawer menu with clean structure and best practices. Includes menu items (Share, Settings, Logout) and two navigation styles.

✨ Features
+ Drawer with header and menu list
+ Two navigation options:
  1. Index-based page switching (simple apps)
  2. Named routes with Navigator.pushReplacementNamed (scalable)
+ Modular structure: main.dart, app_drawer.dart, pages/
+ Uses const constructors where possible
+ Easy to extend—add new menu items without repeating code
  
📁 Structure
lib/
├─ main.dart
├─ widgets/
│  └─ app_drawer.dart
└─ pages/
   ├─ share_page.dart
   ├─ settings_page.dart
   └─ logout_page.dart
🚀 Run the Project
flutter pub get
flutter run

🧭 Navigation Styles
Option A – Index-based
  HomePage holds _selectedIndex, Drawer calls onSelected(index) then closes itself.
Option B – Named Routes
  Define routes in MaterialApp.routes, Drawer uses pushReplacementNamed.

➕ Adding Items
1. Add entry to Drawer items list (app_drawer.dart)
2. Create new page in pages/
3. Register in _pages (Option A) or in MaterialApp.routes (Option B)

✅ Best Practices
- Always call Navigator.pop(context) before navigation
- Use ListTile.selected to highlight active page
- Keep filenames in snake_case, classes in UpperCamelCase
- Avoid duplicated ListTiles—use lists + loops

📸 Screenshots
<img width="603" height="760" alt="Ảnh chụp màn hình 2025-09-09 162340" src="https://github.com/user-attachments/assets/497fe501-39e5-4f50-abea-ea30126fe13a" />
