import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

double _sliderValue = 200;
bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Column(
          children: [
            Slider.adaptive(
              min: 0,
              max: 400,
              value: _sliderValue,
              onChanged: _sliderEnable ?(value){
                print(value);
                _sliderValue = value;
                setState(() {
                  
                });

              } : null
              ),

              Checkbox(
                value: _sliderEnable,
                 onChanged: (value){
                  _sliderEnable = value ?? true;
                  setState(() {
                    
                  });
                 }
                 )
          ],
         ),
      
    );
  }
}