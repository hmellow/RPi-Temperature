# FTemp=$(vcgencmd measure_temp |tr -cd '[[:digit:]].'); echo "${FTemp}+273" | bc; echo ${FTemp}






FTemp=$(vcgencmd measure_temp |tr -cd '[[:digit:]].');
echo $'Temperature: \n';
echo "Celsius: ${FTemp}";
echo "Kelvin: $(echo "${FTemp} + 273" | bc)";
echo "Fahrenheit: $(echo "1.8*${FTemp}+32" | bc)"


FTemp=$(vcgencmd measure_temp |tr -cd '[[:digit:]].'); echo $'Temperature: \n'; echo "Celsius: ${FTemp}"; echo "Kelvin: $(echo "${FTemp} + 273" | bc)"; echo "Fahrenheit: $(echo "1.8*${FTemp}+32" | bc)"


