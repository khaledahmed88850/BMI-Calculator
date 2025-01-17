
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  const BMIResult({
    super.key, required this.result,
  });
final double result;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
           Padding(
            padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               const Text(
                  'Your BMI is',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Text(
                  finalResult()  ,
                  style:const TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(158, 195, 234, 104)),
                ),
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
             result.toStringAsFixed(2),
              style:const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 5, // Adjust the thickness of the slider track
              thumbShape:
                  const RoundSliderThumbShape(enabledThumbRadius: 8),
            ),
            child: Slider(
              value: result,
              max: 80,
              min: 0,
              thumbColor: const Color.fromARGB(238, 214, 252, 126),
              onChanged: (value) {
              },
            ),
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
   String  finalResult ()
  {
    String text = '';
    if(result < 18.5)
    {
     text = 'UnderWeight'; 
    }
    else if(result >= 18.5 && result < 25 )
    {
     text = 'NormalWeight'; 
    }
    else if(result >= 25 && result < 30)
    {
     text = 'OverWeight'; 
    }
    else if(result >= 30 && result < 35)
    {
     text = 'Class I Obesity'; 
    }
    
    else if(result >= 35 && result < 40)
    {
     text = 'Class II Obesity'; 
    }
    
    else if(result >= 40 )
    {
     text = 'Class III Obesity'; 
    }
    return text;
    
  }
}
