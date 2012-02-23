# -*- coding: utf-8 -*-

#sql-updates-items.py
#autor: Edward Cacho
#email: edward1738@gmail.com
#fecha: 22 febrero 2012
#descripcion: crea un fichero sql para actualizar la descripción de los items

#fichero de entrada:
#texto plano con siguiente formato: "^[0-9]{1,3};{1}.*$"

import sys
import re

newfile = open("out.txt","w")
content = ""
file = open(sys.argv[1], "r")
regex = "^[0-9]{1,3};{1}.*$"

strsql = "UPDATE iem_item SET nombre='%1' WHERE id_item=%2;"

for line in file:
    if re.match(regex,line):
        list = line.split(";")
        content += strsql.replace("%1", list[1]).replace("%2", list[0])
        content += "\n"
    else:
        print "Fichero con formato no válido"
        break;

newfile.write(content)