import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../models/weather_func.dart';
import '../../models/weather_info.dart';

class WeatherTitle extends StatefulWidget {
  const WeatherTitle({required this.weatherInfo, super.key, required this.currentTime});

  final WeatherInfo weatherInfo;
  final String currentTime;

  @override
  State<WeatherTitle> createState() => _WeatherTitleState();
}

class _WeatherTitleState extends State<WeatherTitle> {

  @override
  Widget build(final BuildContext context) {

    final WeatherInfo weatherInfo = widget.weatherInfo;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          child: Padding(
            padding: EdgeInsets.only(top: 28.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${weatherInfo.instantTemperature}°',
                  style: TextStyle(fontSize: 58.spMin, height: 1),
                ),
                Text(
                  weatherInfo.currentWeather,
                  style:
                  TextStyle(fontSize: 24.spMin, height: 1.5),
                ),
                Text(
                  '${weatherInfo.dayTemperature}° / ${weatherInfo.nightTemperature}°'
                      '\nFeels like ${weatherInfo.feelsLike}°',
                  style: TextStyle(
                      fontSize: 14.spMin,
                      color: Colors.white.withOpacity(0.7)),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          child: Lottie.asset(
              getAnimationOfWeather(
                  weatherInfo.currentWeather, widget.currentTime),
              width: 256),
        ),
      ],
    );
  }
}