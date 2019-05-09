# Escriba su código aquí
#! /usr/bin/env bash
mkdir temp
sed 's#\([0-9][0-9]\)/\([0-9][0-9]\)/\([0-9][0-9]\)#20\3-\2-\1#' data.csv > temp/outYearFormat.csv
sed 's#[a-z]#\U&#g' temp/outYearFormat.csv > temp/outToUperCase.csv
sed 's#,#.#g' temp/outToUperCase.csv > temp/outWithOutComa.csv
sed 's#;#.#4' temp/outWithOutComa.csv > temp/outWithOutComaLastOcurrence.csv
sed 's#;N#;\\N#g' temp/outWithOutComaLastOcurrence.csv  > temp/outReplaceOnlyNWithNull.csv
sed 's#;;#;\\N;#g' temp/outReplaceOnlyNWithNull.csv  > temp/outReplaceSlashN.csv
sed 's#;\r$#;\\N\r#g' temp/outReplaceSlashN.csv  > temp/outReplaceSlashNEndingLine.csv
sed 's#;#,#g' temp/outReplaceSlashNEndingLine.csv  > Final.csv
rm -r temp
sed '/\\N/d' Final.csv
