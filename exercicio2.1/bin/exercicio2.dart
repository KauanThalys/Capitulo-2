import 'dart:io';

void main() {
  double? mediaFinal;

  print('Digite as três notas que você deseja registrar:');
  print('Digite a nota 1: ');
  double nota1 = double.parse(stdin.readLineSync()!);
  nota1 *= 2;
  print('Digite a nota 2: ');
  double nota2 = double.parse(stdin.readLineSync()!);
  nota2 *= 3;
  print('Digite a nota 3: ');
  double nota3 = double.parse(stdin.readLineSync()!);
  nota3 *= 5;

  double media = ((nota1 + nota2 + nota3) / 10);
  print('A média é $media;');

  if (media >= 6) {
    print('Aluno aprovado.');
  } else if (media < 4) {
    print('Aluno reprovado.');
  } else if (media > 4 && media < 6) {
    print('Aluno em recuperação, digite a nota de recuperação: ');
    double notaRecuperacao = double.parse(stdin.readLineSync()!);
    mediaFinal = (media + notaRecuperacao) / 2;
    print('A média final é $mediaFinal');
  } if (mediaFinal! >= 5.5) {
      print('O aluno foi aprovado.');
    } else {
      print('O aluno foi reprovado.');
    }
}

