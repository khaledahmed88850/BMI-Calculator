part of 'result_cubit.dart';

@immutable
sealed class ResultState {
  late final String msg1;
  late final String msg2;
  late final String msg3;
  late final String msg4;
  late final String msg5;
  late final String msg6;
}

final class ResultInitial extends ResultState {}

final class ResultUnderWeight extends ResultState {
  @override
  String get msg1 => 'Focus on Nutrient-Dense Foods include calorie-rich but nutrient-dense foods like nuts, seeds, avocados, whole grains, and healthy fats (olive oil, coconut oil).';
  @override
  String get msg2 => '- Try eating 5-6 smaller meals throughout the day instead of the usual three large ones. Frequent eating can help you increase your calorie intake more comfortably.';
  @override
  String get msg3 =>'- Don’t Skip Healthy Carbs, whole grains, rice, potatoes, quinoa, and oats are good carbohydrate sources that provide energy and calories without filling you up too quickly.';
  @override
  String get msg4 => '- Stay Hydrated, But Not Just Before Meals. Drinking water can suppress your appetite, so try to drink water after meals rather than before.';
  @override
  String get msg5 => "= Protein is essential for muscle growth, especially if you're adding strength training. Good sources include eggs, lean meats, beans, legumes, dairy products, and protein shakes.";
  @override
  String get msg6 => '- Good sleep is essential for muscle growth and overall health. Aim for 7-9 hours per night to support recovery and metabolism.' ;
}

final class ResultNormalWeight extends ResultState {
   @override
  String get msg1 => "- Eat a Variety of Foods include fruits, vegetables, whole grains, lean proteins, and healthy fats to ensure you're getting all essential nutrients."  ;
  @override
  String get msg2 => "- Control Portions and avoid overeating by practicing mindful eating and recognizing when you're full.";
  @override
  String get msg3 =>'- Aim for at least 150 minutes of moderate aerobic activity or 75 minutes of vigorous activity weekly, plus strength training twice a week.';
  @override
  String get msg4 => '- Drink enough water throughout the day. Staying hydrated supports metabolism and overall health.';
  @override
  String get msg5 => "- Reduce consumption of sugary snacks, processed foods, and high-fat fast foods. Choose healthier options for sustained energy.";
  @override
  String get msg6 => '- Monitor your weight and health markers periodically. Consult a healthcare provider if you notice unexplained changes in your weight or energy levels.' ;
}

final class ResultOverWeight extends ResultState {
  @override
  String get msg1 => '- Reduce Portion Sizes: Eat slightly smaller portions to create a calorie deficit without depriving your body of nutrients.';
  @override
  String get msg2 => '-  Choose Nutrient-Dense Foods: Include vegetables, fruits, whole grains, lean proteins, and healthy fats. Avoid empty-calorie foods like sugary drinks, pastries, and fried snacks.';
  @override
  String get msg3 =>'- Control Liquid Calories: Minimize sugary drinks, alcohol, and high-calorie coffee drinks. Replace with water, herbal teas, or black coffee.';
  @override
  String get msg4 => '- Cardio Exercise: Activities like walking, running, cycling, or swimming burn calories effectively. Aim for at least 150 minutes per week of moderate-intensity exercise';
  @override
  String get msg5 => "- Plan Meals: Prepare meals in advance to avoid unhealthy food choices when hungry.";
  @override
  String get msg6 => '- Talk to a healthcare provider or a nutritionist for a tailored plan. Joining a support group or involving friends/family in your journey can boost motivation.' ;
}

final class ResultClass1 extends ResultState {
   @override
  String get msg1 => '- Create a Calorie Deficit: Consult a healthcare provider or dietitian to calculate a safe calorie intake. A deficit of 500–1,000 calories/day can lead to gradual weight loss of 0.5–1 kg (1–2 pounds) per week.';
  @override
  String get msg2 => '- Limit Processed Foods: Avoid sugary drinks, fast food, and high-fat snacks.';
  @override
  String get msg3 =>'- Practice Portion Control: Use smaller plates and measure servings to prevent overeating.';
  @override
  String get msg4 => '- Keep a Food Journal: Track what and how much you eat. Awareness can help identify and reduce overeating triggers.';
  @override
  String get msg5 => "- Replace emotional eating with non-food-related coping strategies (e.g., a walk, hobby, or talking to a friend).";
  @override
  String get msg6 => '- Consult a Doctor or Dietitian: Get a personalized plan and address potential underlying conditions like thyroid issues or hormonal imbalances.' ;
}

final class ResultClass2 extends ResultState {
  @override
  String get msg1 => '- Consult a Professional: Work with a healthcare provider or registered dietitian to determine your daily caloric needs and create a safe calorie deficit plan.';
  @override
  String get msg2 => '- Minimize Empty Calories: Avoid sugary beverages, processed snacks, and fried foods.';
  @override
  String get msg3 =>'- Low-Impact Activities: Begin with activities that are gentle on joints, such as walking, swimming, or cycling. Aim for 150–300 minutes of moderate-intensity aerobic activity weekly.';
  @override
  String get msg4 => '- Increase Daily Movement: Incorporate activities like standing instead of sitting, taking stairs, or short walks throughout the day.';
  @override
  String get msg5 => "- Medical Conditions: Conditions like hypothyroidism, polycystic ovary syndrome (PCOS), or hormonal imbalances can contribute to weight gain. Treating these conditions can aid weight loss.";
  @override
  String get msg6 => '- Mindful Eating: Pay attention to hunger and fullness cues. Avoid eating while distracted by screens.' ;
}

final class ResultClass3 extends ResultState {
    @override
  String get msg1 => '- Work with a Healthcare Team: Consult a doctor, registered dietitian, and possibly an endocrinologist to assess your overall health and identify underlying conditions like diabetes, hypertension, or hormonal imbalances.';
  @override
  String get msg2 => '- Calorie Deficit Diet: A healthcare provider can calculate your ideal caloric intake to promote gradual weight loss (aim for 0.5–1 kg per week). Extreme calorie restriction is discouraged.';
  @override
  String get msg3 =>'- Increase Activity Daily: Simple habits like standing more, taking short walks, or stretching frequently.';
  @override
  String get msg4 => '- Behavioral Therapy: Address emotional eating, stress, or habits contributing to weight gain through cognitive-behavioral therapy (CBT).';
  @override
  String get msg5 => "- Stress Reduction: Practice relaxation techniques like deep breathing, meditation, yoga, or journaling to reduce stress-induced eating.";
  @override
  String get msg6 => '- Medications: Weight-loss medications (e.g., GLP-1 receptor agonists like semaglutide) may be prescribed alongside diet and exercise. These medications can suppress appetite or reduce calorie absorption.' ;
}
