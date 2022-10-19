import 'dart:math';
import 'dart:io';

void main(List<String> args) {
  print("--Game has started--");

  List<String> elections = ["rock", "paper", "scissors"];
  int score = 0;
  int robotscore = 0;
  for (var i = 0; i < 8; i++) {
    var randomNumber = Random().nextInt(3);
    print("rock,paper,scissors?: ");
    String? secim = stdin.readLineSync();
    if (secim != "rock" && secim != "paper" && secim != "scissors") {
      print("typo try again!:");
      String? secim = stdin.readLineSync();
      i--;
    }
    String robot = elections[randomNumber];
    print("Computer Selection: " + robot);
    if (secim == "rock" && robot == "scissors") {
      score++;
      print("You Won! " + "score : $score" + "-$robotscore ");
    } else if (secim == "paper" && robot == "rock") {
      score++;
      print("You Won! " + "score : $score" + "-$robotscore ");
    } else if (secim == "scissors" && robot == "paper") {
      score++;
      print("You Won! " + "score : $score" + "-$robotscore ");
    } else if (secim == robot) {
      print("DRAW ");
    } else {
      robotscore++;
      print("You Lost " + "score : $score" + "-$robotscore ");
    }
    print("------------------------");
    if (score > 2) {
      print(">>>>>>>>>Congratulations You Won<<<<<<<<<");
      break;
    }
    if (robotscore > 2) {
      print(">>>>>>>>>You Lost<<<<<<<<<");
      break;
    }
  }
}
