#=========================================================================
#=                    CONSTANTES CODIGOD OPERACION                       =
#=========================================================================

ADD = 0x00
ADD_IM = 0x01
SUB = 0x02
SUB_IM = 0x03
MULT = 0x04
MULT_IM = 0x05
DIV = 0x06
DIV_IM = 0x07

AND = 0x10
AND_IM = 0x11
OR = 0x12
OR_IM = 0x13
XOR = 0x14
XOR_IM = 0x15
NOT = 0x16
CMP = 0x17
CMP_IM = 0x18

MOV = 0x20
MOVE_IM = 0x21
JMP = 0x22
JEQ = 0x23
JGT = 0x24
JLT = 0x25

CALL = 0x40
RET = 0x41
RETIN = 0x42

#=========================================================================
#=                    CONSTANTES OPERANDOS                               =
#=========================================================================
AX = 0x00
BX = 0x01
CX = 0x02
DX = 0x03
EX = 0x04
FX = 0x05
GX = 0x06
HX = 0x07

#=========================================================================
#=                    FORMATOS A UTILIZAR                                =
#=========================================================================
formatos = {}

DIRECTO = 0
INMEDIATO = 1
ETIQUETADO = 2
SOLO = 3

formatos[0] = {
                'Nombre' : 'Add directo',
                'RegexOperando' : r'ADD ',
                'Direccionamiento' : DIRECTO,
                'CodigoOperacion' : ADD
                }

formatos[1] = {
                'Nombre' : 'Add indirect',
                'RegexOperando' : r'ADD_IM ',
                'Direccionamiento' : INMEDIATO,
                'CodigoOperacion' : ADD_IM
                }

formatos[2] = {
                'Nombre' : 'Substraction directo',
                'RegexOperando' : r'SUB ',
                'Direccionamiento' : DIRECTO,
                'CodigoOperacion' : SUB
                }

formatos[3] = {
                'Nombre' : 'Substraction inmediata',
                'RegexOperando' : r'SUB_IM ',
                'Direccionamiento' : INMEDIATO,
                'CodigoOperacion' : SUB_IM
                }
formatos[4] = {
                'Nombre' : 'Multiplicacion directo',
                'RegexOperando' : r'MULT ',
                'Direccionamiento' : DIRECTO,
                'CodigoOperacion' : MULT
                }

formatos[5] = {
                'Nombre' : 'Multiplicacion inmediata',
                'RegexOperando' : r'MULT_IM ',
                'Direccionamiento' : INMEDIATO,
                'CodigoOperacion' : MULT_IM
                }

formatos[6] = {
                'Nombre' : 'Division directo',
                'RegexOperando' : r'DIV ',
                'Direccionamiento' : DIRECTO,
                'CodigoOperacion' : DIV
                }

formatos[7] = {
                'Nombre' : 'Division inmediata',
                'RegexOperando' : r'DIV_IM ',
                'Direccionamiento' : INMEDIATO,
                'CodigoOperacion' : DIV_IM
                }

formatos[8] = {
                'Nombre' : 'And directo',
                'RegexOperando' : r'AND ',
                'Direccionamiento' : DIRECTO,
                'CodigoOperacion' : AND
                }

formatos[9] = {
                'Nombre' : 'And inmediato',
                'RegexOperando' : r'AND_IM ',
                'Direccionamiento' : INMEDIATO,
                'CodigoOperacion' : AND_IM
                }
formatos[10] = {
                'Nombre' : 'Or directo',
                'RegexOperando' : r'^OR ',
                'Direccionamiento' : DIRECTO,
                'CodigoOperacion' : OR
                }

formatos[11] = {
                'Nombre' : 'Or inmediato',
                'RegexOperando' : r'^OR_IM ',
                'Direccionamiento' : INMEDIATO,
                'CodigoOperacion' : OR_IM
                }

formatos[12] = {
                'Nombre' : 'Xor directo',
                'RegexOperando' : r'XOR ',
                'Direccionamiento' : DIRECTO,
                'CodigoOperacion' : XOR
                }

formatos[13] = {
                'Nombre' : 'Xor inmediato',
                'RegexOperando' : r'XOR_IM ',
                'Direccionamiento' : INMEDIATO,
                'CodigoOperacion' : XOR_IM
                }

formatos[14] = {
                'Nombre' : 'NOT',
                'RegexOperando' : r'NOT ',
                'Direccionamiento' : SOLO,
                'CodigoOperacion' : NOT
                }

formatos[15] = {
                'Nombre' : 'Compare direcr',
                'RegexOperando' : r'CMP ',
                'Direccionamiento' : DIRECTO,
                'CodigoOperacion' : CMP
                }

formatos[16] = {
                'Nombre' : 'Compare inmediato',
                'RegexOperando' : r'CMP_IM ',
                'Direccionamiento' : INMEDIATO,
                'CodigoOperacion' : CMP_IM
                }

formatos[17] = {
                'Nombre' : 'Move directo',
                'RegexOperando' : r'MOV ',
                'Direccionamiento' : DIRECTO,
                'CodigoOperacion' : MOV
                }

formatos[18] = {
                'Nombre' : 'Move inmediato',
                'RegexOperando' : r'MOVE_IM ',
                'Direccionamiento' : INMEDIATO,
                'CodigoOperacion' : MOVE_IM
                }

formatos[19] = {
                'Nombre' : 'Jump',
                'RegexOperando' : r'JMP ',
                'Direccionamiento' : ETIQUETADO,
                'CodigoOperacion' : JMP
                }

formatos[20] = {
                'Nombre' : 'Jump if equal',
                'RegexOperando' : r'JEQ ',
                'Direccionamiento' : ETIQUETADO,
                'CodigoOperacion' : JEQ
                }

formatos[21] = {
                'Nombre' : 'Jump if greater',
                'RegexOperando' : r'JGT ',
                'Direccionamiento' : ETIQUETADO,
                'CodigoOperacion' : JGT
                }

formatos[22] = {
                'Nombre' : 'Jump if less',
                'RegexOperando' : r'JLT ',
                'Direccionamiento' : ETIQUETADO,
                'CodigoOperacion' : JLT
                }

formatos[23] = {
                'Nombre' : 'Call a function',
                'RegexOperando' : r'CALL ',
                'Direccionamiento' : ETIQUETADO,
                'CodigoOperacion' : CALL
                }

formatos[24] = {
                'Nombre' : 'Ret a function',
                'RegexOperando' : r'RET ',
                'Direccionamiento' : ETIQUETADO,
                'CodigoOperacion' : RET
                }

formatos[25] = {
                'Nombre' : 'Retin a function',
                'RegexOperando' : r'RETIN ',
                'Direccionamiento' : ETIQUETADO,
                'CodigoOperacion' : RETIN
                }
