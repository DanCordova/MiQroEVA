# Compilador

## Syntaxis

Para hacer los programas, seguir la siguiente sintaxis del programa:

* ___Etiqueta___ + ':' + ___Operando___ + ' ' + ___Operandos___

__NOTA:__ Las etiquetas son opcionales, se colocan donde se hará el salto o llamada

En la seccion de ___operandos___ seguir la siguiente convención:

* Para el tipo de operancion ___directa___:
  + [A, B, C, D, E, o F] + 'x' + ',' + ' ' + [A, B, C, D, E, o F] + 'x'
* Para el tipo de operacion ___inmediata___:
  + [A, B, C, D, E, o F] + 'x' + ',' + ' ' + '0x' + [Numero en hexadeximal]
* Para el tipo de operacion ___unica___:
  + [A, B, C, D, E, o F] + 'x'
* Para el tipo de operacion ___Etiqueta___:
  + Cualquier palabra con solo numeros y letras, no utilizar comas ni signos de puntuacion

__NOTA:__ Respetar los espacios y uso de las comas, si no puede tener malas lecturas de compilación.

## Compilar

1. Para compilar, pasar el programa en txt a la carpeta donde se encuentre el compilador  
2. Abrir una línea de comando en esta ubicación
3. Colocar el siguiente código:
    * python compilador.py "Nombre de archivo de entrada".txt "Nombre del archivo de salida".txt
4. Abrir el programa de salida y comprobar los numeros traducidos.

__NOTA:__ El archivo de salida, si ya existe con ese nombre se va a sobre escribir, tener cuidado
