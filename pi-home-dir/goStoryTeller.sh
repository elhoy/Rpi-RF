echo -e "******************************************\b"
introtext="
 Welcome!\n
\n
 You are in a small, dark room.\n
 A dim light is flickering in front of you.\n
 \n
 You are wondering if you are feeling peckish.\n
 \n
"
echo -e $introtext

while [ true ]; do
#LOOP START
optionstext="
 You have the following resources available:
"
echo -e $optionstext

resources="$(ls -A go*.sh)"
PS3=" Please tell me which you would like to use (or Ctrl+C to quit):"
select item in ${resources}
do 
echo -e "\n--> Using ${item}\n"
 if [ -z $item ] 
 then 
  break
 else
  ( exec ./${item} )
  break
 fi
done
#LOOP END
done	

echo "Bye."
