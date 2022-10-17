#!/bin/bash
langArr=("af" "am" "ar" "as" "ay" "az" "ba" "be" "bg" "bho" "bm" "bn" "bo" "bs" "ca" "ceb" "ckb" "co" "cs" "cv" "cy" "da" "de" "doi" "dv" "ee" "el" "en" "eo" "es" "et" "eu" "fa" "fi" "fj" "fo" "fr" "fr-CA" "fy" "ga" "gd" "gl" "gn" "gom" "gu" "ha" "haw" "he" "hi" "hmn" "hr" "hsb" "ht" "hu" "hy" "id" "ig" "ikt" "ilo" "is" "it" "iu" "iu-Latn" "ja" "jv" "ka" "kk" "km" "kn" "ko" "kri" "ku" "ky" "la" "lb" "lg" "ln" "lo" "lt" "lus" "lv" "lzh" "mai" "mg" "mhr" "mi" "mk" "ml" "mn" "mn-Mong" "mni-Mtei" "mr" "mrj" "ms" "mt" "my" "ne" "nl" "no" "nso" "ny" "om" "or" "otq" "pa" "pap" "pl" "prs" "ps" "pt-BR" "pt-PT" "qu" "ro" "ru" "rw" "sa" "sah" "sd" "si" "sk" "sl" "sm" "sn" "so" "sq" "sr-Cyrl" "sr-Latn" "st" "su" "sv" "sw" "ta" "te" "tg" "th" "ti" "tk" "tl" "tlh-Latn" "to" "tr" "ts" "tt" "tw" "ty" "udm" "ug" "uk" "ur" "uz" "vi" "xh" "yi" "yo" "yua" "yue" "zh-CN" "zh-TW" "zu");
inputText=$1
for (( i=1; i<=50; i++ ))
do 
   randomLang=${langArr[ $RANDOM % ${#langArr[@]} ]}
   translatedText=$(trans -brief -bidi -no-warn :$randomLang "${inputText}")
done
echo ""
echo ""
echo ""
trans -brief -bidi -no-warn :en "${translatedText}"