# Colors
WHT=$(tput setaf 7);
RED=$(tput setaf 1);
GRN=$(tput setaf 2);

# Font styles: bold, underlined, normal
bold=$(tput bold);
und=$(tput smul);
normal=$(tput sgr0);


# Get current temperature
FTemp=$(vcgencmd measure_temp |tr -cd '[[:digit:]].');

# Display temperature in respective units
echo -e "\n${bold}Temperature:${normal}";
echo "Celsius: ${FTemp}";
echo "Kelvin: $(echo "${FTemp} + 273" | bc)";
echo "Fahrenheit: $(echo "1.8*${FTemp}+32" | bc)";


# Indicate if the operating temperature is safe
stmsg="${und}Status:${normal}";
if [ ${FTemp:0:1} -gt 58 ];
then
  echo "${stmsg} ${RED}Too hot!";
else
  echo -e "${stmsg} ${GRN}Safe${WHT}\n";
fi;
