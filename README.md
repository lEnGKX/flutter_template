# flight app

A new filght application.


## 使用
flutter pub get

flutter run 

## 目录结构

### 开发目录
```
Project
├─ .dart_tool	 记录了一些dart工具库所在的位置和信息
├─ .idea	 android studio 是基于idea开发的，.idea 记录了项目的一些文件的变更记录
├─ android	 Android项目文件夹
├─ build  编译或运行后产物
├─ ios	 iOS项目文件夹
├─ lib  包含.dart结尾的工程相关文件
│	 ├─ http
│	 ├─ layout  布局
│	 │	└─ basicLayout.dart
│	 ├─ models
│	 ├─ pages  页面
│	 ├─ themes  主题
│	 ├─ utils  工具
│	 ├─ widgets  公共组件
│	 ├─ main.dart  入口文件
│	 └─ routes.dart  路由 
├─ test	 用于存放我们的测试代码
├─ .gitignore	 git忽略配置文件
├─ .metadata	 IDE 用来记录某个 Flutter 项目属性的的隐藏文件
├─ .packages	 pub 工具需要使用的，包含 package 依赖的 yaml 格式的文件
├─ flutter_app.iml  工程文件的本地路径配置
├─ pubspec.lock	 当前项目依赖所生成的文件
├─ pubspec.yaml	 当前项目的一些配置文件，包括依赖的第三方库、图片资源文件等
└─ README.md  READEME文件
```

## Getting Starte

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
