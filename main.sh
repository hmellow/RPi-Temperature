bold=$(tput bold);
normal=$(tput sgr0);
FTemp=$(vcgencmd measure_temp |tr -cd '[[:digit:]].');
echo "${bold}Temperature:${normal}";
echo "Celsius: ${FTemp}";
echo "Kelvin: $(echo "${FTemp} + 273" | bc)";
echo "Fahrenheit: $(echo "1.8*${FTemp}+32" | bc)"
