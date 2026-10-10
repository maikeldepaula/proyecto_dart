Dart
void main() {
  List<int> calificaciones = [85, 67, 92, 74, 58];
  
  print('--- SISTEMA DE CALIFICACIONES ITLA ---');
  print('Vector inicial de calificaciones: $calificaciones\n');

  print('--- ACCESO POR ÍNDICE ---');
  print('Calificación en índice 0: ${calificaciones[0]}');
  print('Calificación en índice 2: ${calificaciones[2]}\n');

  print('--- MODIFICACIÓN DE ELEMENTO ---');
  print('Valor anterior en índice 1: ${calificaciones[1]}');
  calificaciones[1] = 75;
  print('Vector actualizado tras modificación: $calificaciones\n');

  int suma = 0;
  int notaAlta = calificaciones[0];
  int notaBaja = calificaciones[0];
  int aprobados = 0;
  int reprobados = 0;

  print('--- RECORRIDO Y EVALUACIÓN ---');
  for (int i = 0; i < calificaciones.length; i++) {
    int nota = calificaciones[i];
    suma += nota;

    if (nota >= 70) {
      print('Estudiante ${i + 1} (Nota: $nota) -> Aprobado');
      aprobados++;
    } else {
      print('Estudiante ${i + 1} (Nota: $nota) -> Reprobado');
      reprobados++;
    }

    if (nota > notaAlta) notaAlta = nota;
    if (nota < notaBaja) notaBaja = nota;
  }

  double promedio = suma / calificaciones.length;

  print('\n--- RESULTADOS FINALES ---');
  print('Promedio general: ${promedio.toStringAsFixed(2)}');
  print('Calificación más alta: $notaAlta');
  print('Calificación más baja: $notaBaja');
  print('Total aprobados: $aprobados');
  print('Total reprobados: $reprobados');
}
