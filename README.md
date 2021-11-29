# RPi-Temperature
A shell script that shows the current temperature of a Raspberry Pi in Celsius, Fahrenheit, and Kelvin. It also states if the operating temperature is safe.

<br />

#### How to make a custom command for the script (the way I do it at least)
---
1. If you do not already have one create a file for custom commands in the home directory:
```bash
touch ~/.custom_commands.sh
```

2. Open the file in nano:
```bash
nano ~/.custom_commands.sh
```

3. Create a function named how you would like to call the command (I named mine `tmpchk`) & paste the code in `main.sh` into the file. Then save (`^O`), and exit (`^X`).
![Terminal](/Images/customCommandsImage.png)

4. Open the bash profile:
```bash
nano ~/.bash_profile
```

5. Add the following line to the bash profile, save, and exit:
```bash
source ~/.custom_commands.sh
```

6. Run the following command:
```bash
source ~/.bash_profile
```

<br />

#### How to run the command without making a custom command for it
---
Paste the line of code in `oneLine.sh` into your terminal and push enter
