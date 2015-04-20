#!/usr/bin/sh

cat WhatsApp* > input_data.txt

#data refinment
python src/data_curator.py > __data_for_R

#report generation
./src/generate_member_wise.R
./src/generate_date_wise.R
./src/sentiment_analysis.R


