#!/bin/bash
langArr=("ba" "eu" "be" "bn" "bs" "bg" "af" "sq" "am" "ar" "hy" "az" "yue" "ca" "ceb" "ny" "hr" "co" "ceb" "he" "mrj" "hi" "hmn" "hu" "is" "ig" "kn" "pt" "pa" "ro" "sd" "sn" "es" "su" "sw" "tt");
inputText=$1
for (( i=1; i<=30; i++ ))
do 
   randomLang=${langArr[ $RANDOM % ${#langArr[@]} ]}
   translatedText=$(trans -brief :$randomLang "${inputText}")
done
echo ""
echo ""
echo ""
trans -brief :en "${translatedText}"