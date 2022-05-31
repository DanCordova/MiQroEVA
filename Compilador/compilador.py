import re
from formatos import *
import sys

INVALIDO = -1

Numero_Operacion = INVALIDO

Tipo_Direccionamiento = INVALIDO

RegexEtiqueta = r'[A-z\d]+(?=:)'

Etiquetas = {}
def get_lines():

    f = open(sys.argv[1], "r")
    lines = f.readlines()
    f.close()
    return lines

def get_numero_operacion(line):

    global Numero_Operacion

    for operando in range(0, len(formatos)):
        if re.search(formatos[operando]['RegexOperando'], line):
            Numero_Operacion = operando
            break

def add_etiqueta_table(line, idx):
    if re.search(RegexEtiqueta, line):
        etiqueta = re.findall(RegexEtiqueta, line)
        if len(etiqueta) == 1:
            if etiqueta[0] in Etiquetas:
                raise TypeError("Etiqueta repetida en la linea {}".format(idx))
            else:
                Etiquetas[etiqueta[0]] = idx * 3
        else:
            raise TypeError("Etiquetas multiples en el codigo en la linea {}".format(idx))


def translate_operando(operando):
    if(operando == "Ax"):
        return AX

    elif(operando == "Bx"):
        return BX

    elif(operando == "Cx"):
        return CX

    elif(operando == "Dx"):
        return DX

    elif(operando == "Ex"):
        return EX

    elif(operando == "Fx"):
        return FX

    elif(operando == "Gx"):
        return GX

    elif(operando == "Hx"):
        return HX

def get_directo(line):
    RegexDirecto = r'[A-H]x'
    operandos = re.findall(RegexDirecto, line)
    if(len(operandos) == 2):
        operandos[0] = translate_operando(operandos[0])
        operandos[1] = translate_operando(operandos[1])
        return operandos
    else:
        return INVALIDO

def get_inmediato(line):
    RegexInmediato = r'[A-H]x(?=,)|(?<=0x)\d+'
    operandos = re.findall(RegexInmediato, line)
    if(len(operandos) == 2):
        operandos[0] = translate_operando(operandos[0])
        operandos[1] = int(operandos[1],16)
        return operandos
    else:
        return INVALIDO

def get_etiqueta(line):
    RegexEtiquetaOperando = r'(?<= )[A-z\d]+'
    operandos = re.findall(RegexEtiquetaOperando, line)
    if (len(operandos) == 1):
        if operandos[0] in Etiquetas:
            return [Etiquetas[operandos[0]], 0x00]
        else:
            raise TypeError("Etiqueta {} usada pero no definida".format(operandos[0]))
    else:
        return INVALIDO

def get_unico(line):
    RegexUnico = r'[A-H]x(?=\s)'
    operando = re.findall(RegexUnico, line)
    if len(operando) == 1:
        operando[0] = translate_operando(operando[0])
        return [operando[0], 0x00]
    else:
        return INVALIDO

def get_operandos(line):

    global Tipo_Direccionamiento

    if(Tipo_Direccionamiento == DIRECTO):
        operandos = get_directo(line)

    elif (Tipo_Direccionamiento == INMEDIATO):
        operandos = get_inmediato(line)

    elif (Tipo_Direccionamiento == ETIQUETADO):
        operandos = get_etiqueta(line)

    elif (Tipo_Direccionamiento == SOLO):
        operandos = get_unico(line)

    return operandos


def main():
    global Numero_Operacion, Tipo_Direccionamiento
    lines = get_lines()

    outputF = open(sys.argv[2], "w")

    for idx in range(0, len(lines)):
        if(lines[idx] != "\n"):
            add_etiqueta_table(lines[idx], idx)


    print(Etiquetas)

    for idx in range(0, len(lines)):
        if(lines[idx] != "\n"):
            Numero_Operacion = INVALIDO
            get_numero_operacion(lines[idx].upper())
            if Numero_Operacion == INVALIDO:
                raise TypeError("Instruccion invalida en la linea {}".format(idx+1))

            codigo_operacion = formatos[Numero_Operacion]["CodigoOperacion"]
            Tipo_Direccionamiento = formatos[Numero_Operacion]["Direccionamiento"]
            outputF.write("{} ".format(codigo_operacion))

            operandos = get_operandos(lines[idx])

            if (operandos == INVALIDO):
                raise TypeError("Operandos invalidos en la linea {}".format(idx+1))

            for num_operando in range(0, len(operandos)):
                outputF.write("{} ".format(operandos[num_operando]))
            outputF.write("\n")


    outputF.close()


if __name__ == "__main__":
    main()
