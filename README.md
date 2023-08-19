# Battery Whisper Script

![Battery Whisper] 🔋

A simple Python script that monitors your laptop's battery level and sends notifications when it reaches a specified threshold. This helps you conserve battery life and save some energy.

## Features ❤️

- Get timely notifications when battery level reaches a user-defined threshold (default: 80%).
- Runs silently in the background, periodically checking battery level.
- Very less weight on the system because its just a simple python script under 50 lines
- Customize notification appearance with various styles and colors.

## Usage 🪴

1. Clone or download this repository.
2. Configure the script to run automatically when you plug in your laptop (instructions provided).
3. Enjoy extended battery life and less power bills!

## Stopping the Script 🛑

If you want to stop Battery Whisper from running, you can do so using PowerShell:

1. Open PowerShell as an administrator. To do this, search for "PowerShell" in the Start menu, right-click on "Windows PowerShell," and select "Run as administrator."

2. Run the following command to list all running Python processes:

   ```powershell
   Get-Process | Where-Object { $_.Path -like "*python*" }

This command will display a list of running processes with "python" in their path.

Identify the process name (usually python.exe or pythonw.exe) and the Process ID (PID) of the Battery Whisper script from the list.

Run the following command to terminate the script. Replace PID with the actual Process ID:

```powershell
Stop-Process -Id PID
```
  
For example, if the PID is 12345:

```powershell
Stop-Process -Id 12345
```

## Getting Started

Detailed setup instructions and usage examples are provided in [USAGE.md](USAGE.md).

## Contributing ⛓️

Contributions and suggestions are welcome! If you'd like to improve this script or add new features, please feel free to submit a pull request.

## License 👮

This project is licensed under the [MIT License](LICENSE).

## Acknowledgements

Thank you to the open-source community and contributors for making this project possible.

---

**Let's optimize battery usage and contribute to a greener environment!**

[![Buy Me a Coffee](https://img.shields.io/badge/buy%20me%20a%20coffee-donate-orange.svg)](https://www.buymeacoffee.com/swaroop929)

