# 
# Update generated models
#

MOD=lib/common/generated/sma_remote_api.models.swagger.dart
IMPT="import 'package:anet/common/models/model_behavior.dart';"

TMPMOD=/tmp/out.dart
rm -rf $TMPMOD
CONT=true

while read line; do
   if [[ $line =~ "as enums;" ]]; then
      echo "$line" >> $TMPMOD
      echo $IMPT >> $TMPMOD
      continue
   fi
   if [ $CONT == "true" ] && [[ $line =~ "class " ]]; then
      echo ${line// \{/ extends ModelBehavior {} >> $TMPMOD
      if [[ $line =~ "User" ]]; then
         CONT="false"
      fi
      continue
   fi
   echo "$line" >> $TMPMOD


   #echo ${line//enums;/enums;\n$IMPT}

done < $MOD

dart format $TMPMOD
mv -f $TMPMOD $MOD