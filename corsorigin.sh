#!/bin/bash

while getopts ":f:o:" o; do
    case "${o}" in
        f)
            FileName=${OPTARG}
            ;;
  esac
done
shift $((OPTIND-1))

echo "FileName where domains are is set to ${FileName}"
echo "Your results will be in a file called ${OutputFile}"

touch output.txt

sed 's/^/https:\/\//' $FileName > tempHTTPS.txt

for i in $(cat "tempHTTPS.txt"); do
    content=$(curl --head -H "Origin: VULN"  --max-time 2 "{$i}")
    echo "\nVULN" >> output.txt
    echo "$content" >> output.txt
done

cat output.txt | grep "VULN"  >> code2.txt

paste -d'\n' $FileName code2.txt  > final.txt

cat final.txt | grep -B 3 ":" > final1.txt

cat final1.txt | grep "."\n | grep "." > results1.txt
cat results1.txt | grep "." > results.txt

rm code2.txt final.txt final1.txt output.txt tempHTTPS.txt results1.txt
echo "-----------------------------------------------------------------------------------"
echo "-----------------------------------------------------------------------------------"
echo "-----------------------------------------------------------------------------------"
echo "-------------========== ORIGIN HEADER IS VULNERABLE! - ==============--------------"
echo "-----------------------------------------------------------------------------------"
echo "-----------------------------------------------------------------------------------"
echo " ========-------- THE FOLLOWING DOMAINS HAVE A CORS VULN! ----------------========="
echo ""
echo ""
cat results.txt | grep "."
echo ""
echo "-----------------------------------------------------------------------------------"
echo "-----------------------------------------------------------------------------------"
echo "-----------------------------------------------------------------------------------"
echo "-----------------------------------------------------------------------------------"
echo "       TO LEARN MORE ABOUT HOW TO ATTACK THE REFLECTION OF ORIGIN IN               "
echo "                      ACCESS-CONTROL-ALLOW-ORIGIN, GOTO                            "
echo "             https://book.hacktricks.xyz/pentesting-web/cors-bypass                "
echo "-----------------------------------------------------------------------------------"
