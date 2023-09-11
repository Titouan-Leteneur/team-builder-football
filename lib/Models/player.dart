import 'dart:math';

class Player {

  var offensive = 0;
  var defensive = 0;
  var dribble = 0;
  var name = "";

  // Create Player's statistics 
  void init(int maximumValue, String newName) {
    final Random random = Random();
    var maxValue = maximumValue;
    setName(newName);

    // Generate 3 random numbers between 0 and maxValue (included)
    int randomNumber1 = random.nextInt(maxValue + 1);
    int randomNumber2 = random.nextInt(maxValue + 1);
    int randomNumber3 = random.nextInt(maxValue + 1);

    // Calculate the sum of the three random numbers
    int sum = randomNumber1 + randomNumber2 + randomNumber3;

    // Divide each number by the sum to get equal proportions
    double proportion1 = randomNumber1 / sum;
    double proportion2 = randomNumber2 / sum;
    double proportion3 = randomNumber3 / sum;

    // Multiply proportions by maxValue to get final values
    int variable1 = (proportion1 * maxValue).toInt();
    int variable2 = (proportion2 * maxValue).toInt();
    int variable3 = (proportion3 * maxValue).toInt();

    offensive = variable1;
    defensive = variable2;
    dribble = variable3;
  }

  void setName(newName) {
    name = newName;
  }

  @override
  String toString() {
    return "Name: $name, Offensive: $offensive, Defensive: $defensive, Dribble: $dribble.";
  }

}