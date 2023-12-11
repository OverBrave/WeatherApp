# WeatherApp

| Image | Description |
| --- | --- |
| ![](/assets/layout2.png) | This is my first Flutter project that I developed with Backend. Django is used in the background of this simple and easy to use Weather app. |

![](/assets/layout1.png)

### TODO:
- Django & RestAPI backend is finished but I am looking for how to secure API's token on publish build.

## Installation

### Flutter side
1. Create a new Flutter project:
```
flutter create weather_app
```

2. Clone the repository:
```
git clone https://github.com/myavuzokumus/WeatherApp.git
```

3. Test your changes by running the app on an emulator or a physical device:
```
flutter run
```

> Note: If you wanna run app on web, you need to use `flutter run -d edge --web-browser-flag "--disable-web-security".
> Because Google API doesn't support CORS, so you need to this. But also you can move API to the proxy server and you fetch data from that or just use simple package for that. Your choice.
> So I already do it. Google API working on backend right now!

## Packages

- [hive](https://pub.dev/packages/hive) - Save for the user’s selected city in device’s storage.
- [lottie](https://pub.dev/packages/lottie) - To use animated icons in an app.
- [screenutil](https://pub.dev/packages/flutter_screenutil) - To make a responsive design for an app.
- [http](https://pub.dev/packages/http) - To fetch data from JSON.

## APIs

- [visualcrossing] - Weather Data
- [Google Maps AutoComplete Places]- City Data

## License

This project is licensed under the [MIT License](/LICENSE).
