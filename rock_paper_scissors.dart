import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }
void main() {

  final rng = Random();

  while (true) {
    stdout.write('Rock, paper or scissors? (r/p/s) ');
    final input = stdin.readLineSync();

    if (input == 'r' || input == 'p' || input == 's') {
      var playerMove;

      if(input == 'r') {
        playerMove = Move.rock;
      } else if(input == 'p') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }

      final random = rng.nextInt(3);
      final aiMove = Move.values[random];
      print('You played: $playerMove');
      print('AI played ${aiMove.name}');

      if(playerMove == aiMove) {
        print('It\'s a draw');
      } else if(playerMove == Move.rock && aiMove == Move.scissors || playerMove == Move.scissors && aiMove == Move.paper || playerMove == Move.paper && aiMove == Move.rock) {
        print('You win!');
      }  else {
        print('You loose...');
      }
    
    } else if (input == 'q') {
      break;
    } else {
      print('Invalid input');
    }
  }
}
  
  //While true
  //Show the prompt
  //Read user input from console
  //Id input is valid  r/p/s
  //  Chose randomly the AI move
  //  Compare the AI move to a player's move
  //  Show the result
  //else if Input is 'q' 
  //  Quit thegame
  //else 
  //  'Invalid input'

