# provider_and_imageloading

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## Cheatsheet

### Builder

- `Provider`⭐️
- `ChangeNotifierProvider`⭐️
- `StreamProvider`
- `FutureProvider`
- `ListenableProvider`
- `ValueListenableProvider`
- `MultiProvider`⭐️
- `ProxyProvider`(1...6)

#### Lazy creation

- `Provider(lazy: true)`


### Reading

- `context.read<T: Notifier>()`⭐️

### Listen

#### Widget

- `Consumer`⭐️
- `Selected`⭐️

#### Extension function
- `context.watch<T: Notifier>()`⭐️
- `context.select<T: Notifier, R>(T => R)`⭐️
