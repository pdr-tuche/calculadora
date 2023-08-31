import 'dart:io';

void main() {
    print('digite o primeiro numero');
    var num1 = double.parse(stdin.readLineSync()!);
    print('digite o segundo numero');
    var num2 = double.parse(stdin.readLineSync()!);
    print('digite uma operação');
    String operacao = stdin.readLineSync()!;

    double resultado = 0;

  switch (operacao) {
    case "+":
      resultado = num1 + num2;
      break;
    case "-":
      resultado = num1 - num2;
      break;
    case "*":
      resultado = num1 * num2;
      break;
    case "/":
      if (num2 != 0) {
        resultado = num1 / num2;
      } else {
        print("Não é possível dividir por zero.");
        return;
      }
      break;
    default:
      print("Operação inválida.");
      return;
  }

  print("O resultado da operação é: $resultado");

}
