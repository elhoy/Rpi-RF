#! /bin/bash
echo "------"
echo "Hi, this does basic install for all useful RF tools."
echo "Use it to check whether tools are ready and up to date."
echo " "
echo "List is held at top of this script ( $(basename $0) )"
echo " "
listofpackages="
rtl-sdr
osmo-sdr
kismet
gnuradio
"

listofprojects="
https://github.com/F5OEO/rpitx
https://github.com/pavels/spektrum
https://github.com/atlas0fd00m/rfcat
"

echo -e "\nMy tools are:"
echo $listofpackages
echo -e "\nAnd full projects from:"
echo $listofprojects

echo -e "\n\nSelect yes in each of the following, to update or install \n"

echo -e "\nDo you wish to install (or update) the packages? (projects will be done later)"
select yn in Yes No
do
case $yn in
    "Yes" ) sudo apt install $listofpackages; break;;
    "No" ) break;;
esac
done

echo -e "\nDo you wish to clone (or update) the projects into $USER directory?"
echo "(may require manual install after - check READMEs)"
cd /home/$USER
select yn in Yes No
do
case $yn in
    "Yes" ) for proj in ${listofprojects}; do git clone $proj; done; break;;
    "No" ) break;;
esac
done

echo -e "\n\n"
echo "If you updated projects, please check further instructions with EACH project in /home/$USER."
echo " " 
echo "Done."

