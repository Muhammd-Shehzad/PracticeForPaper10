import 'dart:io';
import 'dart:math';

void main () {
  guessTheNumber();
}

void guessTheNumber () {
  int remainingAttempts = 5;

  int guessedBySystem = Random().nextInt(10);

  print('Remaining Attempts: $remainingAttempts');
  print('Enter a Number to see if its the Number guessed by the System: ');
  int guessedByUser = int.parse(stdin.readLineSync()!);


    while (true) {
      remainingAttempts--;

      if (remainingAttempts != 0 && guessedByUser > guessedBySystem)
      {
        print('Remaining Attempts: $remainingAttempts');
        print('Your entered number is Higher than the Guessed by System, enter a Low number: ');
        guessedByUser = int.parse(stdin.readLineSync()!);
      } else if (remainingAttempts != 0 && guessedByUser < guessedBySystem)
      {
        print('Remaining Attempts: $remainingAttempts');
        print('Your entered number is lower than the Guessed by System, enter a High number: ');
        guessedByUser = int.parse(stdin.readLineSync()!);
      } else if (guessedByUser == guessedBySystem)
      {
        print('You guessed the right number, You Won ');
        break;
      } else if (remainingAttempts == 0)
      {
        print('Remaining Attempts: $remainingAttempts');
        print('No more attempts left, you have lost the Game');
        endGame(guessedBySystem);
        repeat();
        break;
      }
    }
  }

  void repeat() {
    print('press R to restart the game: ');
    String userInput = stdin.readLineSync()!;

    if (userInput == 'r' || userInput == 'R') {
      guessTheNumber();
    }
  }

  int endGame (int guessed) {
  print('You have lost the Game, the Number guessed by the system was: $guessed');
  return 0;
  }