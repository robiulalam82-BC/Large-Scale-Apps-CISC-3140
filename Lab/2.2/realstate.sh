#! /bin/bash


echo "Realtor Bot Initiated!"


FILE_IN=realestate.csv
FILE_OUT=report.csv

deleteIfExists(){
if test "$1"; then
  echo "Cleaning $1"
  rm $1
fi
}

deleteIfExists $FILE_IN
deleteIfExists $FILE_OUT

wget https://data.cityofnewyork.us/resource/yjxr-fw8i.csv -O $FILE_IN

TARGET_BORO_brooklyn='"3"'
summation_fullval_brooklyn=0
count_target_brooklyn=0
average_target_brooklyn=0

TARGET_BORO_manhattan='"1"'
summation_fullval_manhattan=0
count_target_manhattan=0
average_target_manhattan=0

TARGET_BORO_bronx='"2"'
summation_fullval_bronx=0
count_target_bronx=0
average_target_bronx=0

TARGET_BORO_queens='"4"'
summation_fullval_queens=0
count_target_queens=0
average_target_queens=0

TARGET_BORO_staten='"5"'
summation_fullval_staten=0
count_target_staten=0
average_target_staten=0


while IFS=, read -r bble	BORO	block	lot	easement	owner	bldgcl	taxclass	ltfront	ltdepth	ext	stories	fullval	avland	avtot	exland	extot	excd1	staddr	zip	exmptcl	bldfront	blddepth	avland2	avtot2	exland2	extot2	excd2	period	year	valtype	borough	latitude	longitude	community_board	council_district	census_tract	bin	nta	geocoded_column; do
  fullval=${fullval%?}
  fullval=${fullval:1}
  if [ $BORO == $TARGET_BORO_brooklyn ];  then
    let "summation_fullval_brooklyn+=fullval"
    let "count_target_brooklyn+=1"
    average_target_brooklyn=$(($summation_fullval_brooklyn/$count_target_brooklyn))
  fi
  if [ $BORO == $TARGET_BORO_manhattan ];  then
    let "summation_fullval_manhattan+=fullval"
    let "count_target_manhattan+=1"
    average_target_manhattan=$(($summation_fullval_manhattan/$count_target_manhattan))
  fi
  if [ $BORO == $TARGET_BORO_bronx ];  then
    let "summation_fullval_bronx+=fullval"
    let "count_target_bronx+=1"
    average_target_bronx=$(($summation_fullval_bronx/$count_target_bronx))
  fi


done < $FILE_IN; \

echo ">> max full val $summation_fullval_brooklyn with a count of $count_target_brooklyn with average market value of $average_target_brooklyn"
echo "Borough, Total Market Value, Average Propertie Value" >> $FILE_OUT
echo "Brooklyn, $summation_fullval_brooklyn,  $average_target_brooklyn" >> $FILE_OUT
echo "Manhattan, $summation_fullval_manhattan,  $average_target_manhattan" >> $FILE_OUT
echo "Bronx, $summation_fullval_bronx,  $average_target_bronx" >> $FILE_OUT
echo "Job finished! Report available at $FILE_OUT
