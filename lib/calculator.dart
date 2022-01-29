import 'dart:math';

class Calculation {
  Calculation(
      {required this.height, required this.weight, required this.locale});

  final int height;
  final int weight;
  final String locale;

  late double _bmi;

  String calculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getWater() {
    if (locale == 'es') {
      return "Ingesta de agua";
    }
    return "Water intake";
  }

  String getUrl() {
    if (locale == 'es') {
      // Links en español
      if (_bmi >= 30) {
        return 'https://food.ndtv.com/food-drinks/obesity-diet-what-to-eat-and-avoid-to-manage-obesity-1815463';
      } else if (_bmi >= 25) {
        return 'https://www.ucsfhealth.org/education/guidelines-for-a-low-cholesterol-low-saturated-fat-diet';
      } else if (_bmi >= 18.5) {
        return 'https://www.who.int/news-room/fact-sheets/detail/healthy-diet';
      } else {
        return 'https://www.mayoclinic.org/healthy-lifestyle/nutrition-and-healthy-eating/expert-answers/underweight/faq-20058429';
      }
    }
    if (_bmi >= 30) {
      return 'https://food.ndtv.com/food-drinks/obesity-diet-what-to-eat-and-avoid-to-manage-obesity-1815463';
    } else if (_bmi >= 25) {
      return 'https://www.ucsfhealth.org/education/guidelines-for-a-low-cholesterol-low-saturated-fat-diet';
    } else if (_bmi >= 18.5) {
      return 'https://www.who.int/news-room/fact-sheets/detail/healthy-diet';
    } else {
      return 'https://www.mayoclinic.org/healthy-lifestyle/nutrition-and-healthy-eating/expert-answers/underweight/faq-20058429';
    }
  }

  String getExercise() {
    if (locale == 'es') {
      if (_bmi >= 40) {
        return 'Ejercicio para Obesidad morbida';
      } else if (_bmi >= 35) {
        return 'Ejercicio para Obesidad Tipo 2';
      } else if (_bmi >= 30) {
        return 'Ejercicio para Obesidad Tipo 1';
      } else if (_bmi >= 25) {
        return 'Ejercicio para Sobrepse';
      } else if (_bmi >= 18.5) {
        return 'Ejercicio para Saludable';
      } else {
        return 'Ejercicio para Peso insuficiente';
      }
    }
    if (_bmi >= 40) {
      return 'Exercise for Severe Obesity';
    } else if (_bmi >= 35) {
      return 'Exercise for Obesity Type 2';
    } else if (_bmi >= 30) {
      return 'Exercise for Obesity Type 1';
    } else if (_bmi >= 25) {
      return 'Exercise for Overweight';
    } else if (_bmi >= 18.5) {
      return 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras facilisis quam eu mattis iaculis. In quam mi, pharetra porttitor lacus quis, facilisis sodales dui. In tempor tempus nulla sed tempus. Phasellus elementum feugiat quam id elementum. Suspendisse tempor lacus leo, sed hendrerit quam vestibulum et. Quisque in lobortis lorem. ';
    } else {
      return 'Exercise for Underweight';
    }
  }

  String getDiet() {
    if (locale == 'es') {
      if (_bmi >= 40) {
        return 'Dieta para Obesidad morbida';
      } else if (_bmi >= 35) {
        return 'Dieta para Obesidad Tipo 2';
      } else if (_bmi >= 30) {
        return 'Dieta para Obesidad Tipo 1';
      } else if (_bmi >= 25) {
        return 'Dieta para Sobrepse';
      } else if (_bmi >= 18.5) {
        return 'Dieta para Saludable';
      } else {
        return 'Dieta para Peso insuficiente';
      }
    }
    if (_bmi >= 40) {
      return 'Diet for Severe Obesity';
    } else if (_bmi >= 35) {
      return 'Diet for Obesity Type 2';
    } else if (_bmi >= 30) {
      return 'Diet for Obesity Type 1';
    } else if (_bmi >= 25) {
      return 'Diet for Overweight';
    } else if (_bmi >= 18.5) {
      return 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras facilisis quam eu mattis iaculis. In quam mi, pharetra porttitor lacus quis, facilisis sodales dui. In tempor tempus nulla sed tempus. Phasellus elementum feugiat quam id elementum. Suspendisse tempor lacus leo, sed hendrerit quam vestibulum et. Quisque in lobortis lorem. ';
    } else {
      return 'Diet for Underweight';
    }
  }

  String getResult() {
    if (locale == 'es') {
      if (_bmi >= 40) {
        return 'Obesidad morbida';
      } else if (_bmi >= 35) {
        return 'Obesidad Tipo 2';
      } else if (_bmi >= 30) {
        return 'Obesidad Tipo 1';
      } else if (_bmi >= 25) {
        return 'Sobrepse';
      } else if (_bmi >= 18.5) {
        return 'Saludable';
      } else {
        return 'Peso insuficiente';
      }
    }
    if (_bmi >= 40) {
      return 'Severe Obesity';
    } else if (_bmi >= 35) {
      return 'Obesity Type 2';
    } else if (_bmi >= 30) {
      return 'Obesity Type 1';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Healthy';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (locale == 'es') {
      if (_bmi >= 25) {
        return 'Tiene un peso mayor al normal. Haga mas ejercicio.';
      } else if (_bmi >= 18.5) {
        return 'Tiene un peso normal. Buen trabajo!';
      } else {
        return 'Tiene un peso inferior al normal. Alimentese mejor.';
      }
    }
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
