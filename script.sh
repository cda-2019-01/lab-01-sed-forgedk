# Escriba su código aquí
sed 's#\([0-9][0-9]\)/\([0-9][0-9]\)/\([0-9][0-9]\)#20\3-\2-\1#' data.csv > dataYearFormat.csv 
