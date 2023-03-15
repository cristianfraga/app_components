import 'package:components_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
              min: 50,
              max: 400,
              value: _sliderValue,
              activeColor: AppTheme.primary,
              // divisions: 10,
              onChanged: _sliderEnable
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null),
          CheckboxListTile(
              title: const Text('Habilitar slider'),
              activeColor: AppTheme.primary,
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                    _sliderEnable = value ?? true;
                  })
          ),
          SwitchListTile.adaptive(
              title: const Text('Habilitar slider'),
              activeColor: AppTheme.primary,
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                _sliderEnable = value;
              })
          ),
          const AboutListTile(
            icon: Icon(Icons.info_outline),
            applicationName: 'ComponentsApp',
            applicationVersion: '1.0',
            applicationIcon: Icon(Icons.adb_outlined),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://www.pngmart.com/files/15/Super-Hero-Transparent-Background.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
