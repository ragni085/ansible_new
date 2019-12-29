#!/bin/bash
 
if [ ! -f "$1" ]; then    
  echo "Given file doesnot exist"
  exit 1
fi

i=0
STUDENT_COUNT=$(cat batch43.yml | yq . | jq '.studentDetails[].name' | wc -l)
NAMES=(`cat batch43.yml | yq .| jq '.studentDetails[].name'|xargs`)
TRAINER_NAME=$(cat batch43.yml | yq .| jq '.trainerName')
COURSENAME=$(cat batch43.yml | yq .| jq '.courseNmae')
STARTDATE=$(cat batch43.yml | yq .| jq '.startDate')
TIMING=$(cat batch43.yml | yq .| jq '.timing')

while [ $STUDENT_COUNT -gt 0 ]; do 

echo -e "Hello ${NAMES[$i]},\n\tMy name is ${TRAINER_NAME} and I am a ${COURSE_NAME} trainer.\nWe are starting a new batch from ${START_DATE} and timing is ${TIMING}.If you are interested then please contact us on PH_NUMBER\n\n"
STUDENT_COUNT=$(($STUDENT_COUNT-1))
i=$(($i+1))
done      