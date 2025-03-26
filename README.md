# Custom Cached Image with Shimmer

A Flutter package that combines **CachedNetworkImage** with **Shimmer** to provide a smooth and visually appealing loading experience for network images.

## ✨ Features
- **Shimmer Effect:** Displays a shimmer animation while the image loads.
- **Cached Network Image:** Efficiently loads and caches images for better performance.
- **Error Handling:** Displays a fallback image if loading fails.
- **Customizable:** Supports custom height, width, border radius, and fit options.
- **Seamless User Experience:** Eliminates blank spaces and sudden pop-ins.

---

## 📦 Installation
Add the following dependency to your **pubspec.yaml** file:

```yaml
dependencies:
  custom_cached_image: latest_version # Replace with the latest version
```

Then run:

```sh
flutter pub get
```

---

## 🔧 Usage

### Import the Package
```dart
import 'package:custom_cached_image/custom_cached_image.dart';
```

### Basic Example
```dart
CustomCachedImage(
imageUrl: 'https://example.com/sample.jpg',
width: 150,
height: 150,
borderRadius: 10,
fit: BoxFit.cover,
)
```

### Full Example
```dart
import 'package:flutter/material.dart';
import 'package:custom_cached_image/custom_cached_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Custom Cached Image Example")),
        body: Center(
          child: CustomCachedImage(
            imageUrl: 'https://example.com/sample.jpg',
            width: 200,
            height: 200,
            borderRadius: 15,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
```

---

## 🎨 Customization
### Adjust Image Dimensions
```dart
CustomCachedImage(
  imageUrl: 'https://example.com/sample.jpg',
  width: 300,
  height: 300,
)
```

### Modify Border Radius
```dart
CustomCachedImage(
  imageUrl: 'https://example.com/sample.jpg',
  borderRadius: 20,
)
```

### Set Image Fit
```dart
CustomCachedImage(
  imageUrl: 'https://example.com/sample.jpg',
  fit: BoxFit.cover,
)
```

---

## 🛠️ Error Handling
If an image fails to load, a default fallback image is displayed.
```dart
CustomCachedImage(
  imageUrl: 'invalid_url', // Broken link
)
```
_Default error image will be shown._

---

## 💡 Why Use This Package?
- Reduces **blank spaces** while images load.
- Enhances **user experience** with a smooth shimmer effect.
- Improves **performance** by caching images efficiently.
- Easy to **customize** and integrate into any Flutter project.

---

## 🔗 Links
- [Pub.dev Page](https://pub.dev/packages/custom_cached_image)
- [GitHub Repository](https://github.com/manushah77/custom_cache_image_package)
- [Issue Tracker](https://github.com/manushah77/custom_cached_image/issues)

---

## 📄 License
This project is licensed under the MIT License - see the LICENSE file for details.

---

## ❤️ Support & Contributions
If you find this package helpful, feel free to ⭐ the repository and contribute!

Pull requests, feature requests, and bug reports are always welcome!

