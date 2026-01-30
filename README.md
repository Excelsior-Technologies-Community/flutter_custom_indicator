# Custom Indicator
A highly customizable **Primary Progress Indicator** widget for Flutter.   
Lightweight, animated, and easy to style according to your app design.   

This package provides a reusable progress indicator that supports:   
- Custom height
- Custom colors
- Border radius
- Smooth animation
- Clean and minimal design

---

## ✨ Features
- ✅ Animated progress change
- ✅ Custom progress & background colors
- ✅ Adjustable height
- ✅ Rounded corners support
- ✅ Simple API
- ✅ Library-ready scalable structure

---

## 📸 Preview
![Screenrecorder-2026-01-30-16-08-10-215](https://github.com/user-attachments/assets/dc74a29e-08b6-43bb-9993-9937c7f6edfa)


---

## 📦 Installation
### Add this to your `pubspec.yaml`:
```yaml
dependencies:
  flutter_custom_indicator:
    path: '.../flutter_custom_indicator/flutter_custom_indicator'
```

##

### From GitHub
```yaml
dependencies:
  flutter_custom_indicator:
    git:
      url: https://github.com/yourusername/flutter_custom_indicator.git
```

---

## 🚀 Usage
Import the package:
```dart
import 'package:flutter_custom_indicator/flutter_custom_indicator.dart';
```

Use the widget:
```dart
PrimaryProgressIndicator(
  value: 0.6, // 0.0 to 1.0
  height: 12,
  progressColor: Colors.green,
  backgroundColor: Colors.grey.shade300,
  borderRadius: BorderRadius.circular(12),
)
```

---

## 🎯 Parameters
| Parameter           | Type            | Default       | Description                 |
| ------------------- | --------------- | ------------- | --------------------------- |
| `value`             | `double`        | required      | Progress value (0.0 to 1.0) |
| `height`            | `double`        | `12`          | Height of indicator         |
| `progressColor`     | `Color?`        | `Colors.blue` | Color of progress bar       |
| `backgroundColor`   | `Color?`        | `Grey shade`  | Background color            |
| `borderRadius`      | `BorderRadius?` | `8 circular`  | Rounded corners             |
| `animationDuration` | `Duration`      | `500ms`       | Animation speed             |

---

## 🧪 Example
```dart
class ExamplePage extends StatefulWidget {
  const ExamplePage({super.key});

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  double progress = 0.2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PrimaryProgressIndicator(
          value: progress,
          height: 14,
          borderRadius: BorderRadius.circular(20),
          progressColor: Colors.purple,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            progress += 0.1;
            if (progress > 1.0) progress = 0.0;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
```

---

## 📁 Library Structure
```text
lib/
 ├── flutter_custom_indicator.dart
 └── src/
     ├── constants/
     └── widgets/
```

---

## 📄 License
```text
Copyright (c) 2026 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all  
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED **"AS IS"**, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```
