#fecha: 25 febrero 2012
#autor: edward1738@gmail.com
#descripcion: script para generar las funciones de las celdas (óptimo) 
# de la hoja "resumen" de "iemocional.ods" para las filas de siguientes 
# solo arrastrar cursor

def intToCell(entero):
    '''
        Retorna la columna segun el numero ingresado, empieza desde cero
        con numero de fila3
    '''
    strCol = ""
    init = 65 #A
    if entero > 25:
        strCol = "A"
        entero -= 26
    strCol += chr( init + entero)
    return strCol + "3"
    
#numero de fila de las celdas que contienen la sumatoria por escala individual
#Columna: Gxx
column = (23,45,64,81,95,113,133,148,166,181,199,217,230,246,261,279,293,329,345,357,369)

strFnCalc = '=SI(Y(detalle.$G$COL <= intervalos.CELL_MAX;detalle.$G$COL>= intervalos.CELL_MIN);"SI";"")'

i = 1
for k in column:
    strColMin = intToCell(i)
    strColMax = intToCell(i+1) 
    
    i += 2
    
    strNewFn = strFnCalc.replace("COL", str(k) )
    strNewFn = strNewFn.replace("CELL_MIN", strColMin)
    strNewFn = strNewFn.replace("CELL_MAX", strColMax)
    
    print strNewFn
    
    