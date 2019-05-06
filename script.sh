# Escriba su código aquí
sed 's#\([0-9][0-9]\)/\([0-9][0-9]\)/\([0-9][0-9]\)#20\3-\2-\1#' data.csv > dataYearFormat.csv 
sed 's#[a-z]#\U&#g' dataYearFormat.csv > dataToUpperCase.csv 
sed 's#,#.#g' dataToUpperCase.csv > dataWithOutComma.csv 

sed 's#\\N# #g' dataYearFormat.csv  > dataNCorrection.csv
sed 's#;;#; ;#g' dataNCorrection.csv  > dataNCorrectionNoSlash.csv
sed 's#;;#;\\N;#g' dataNCorrectionNoSlash.csv  > dataReplaceSlashN.csv
sed 's#\(.*\);#\1#g' dataNoNull.csv  > dataNoNullCorrection.csv
