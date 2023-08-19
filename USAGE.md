# Battery Whisper Script - Usage Guide

The Battery Whisper Script is a simple tool that helps you manage your laptop's battery life efficiently. This guide will walk you through the steps to set up and use the script on your Windows or Linux laptop.

## Table of Contents

1. Installation
2. Configuring Automatic Startup
3. Customizing Threshold and Notification Settings
4. Running the Script
5. Force Stop/Kill the Script
6. Contributing
7. License

## Installation

To use the Battery Whisper Script, you'll need to have Python installed on your laptop.

1. **Clone or Download**: Clone or download this repository to your computer.

2. **Navigate to the Directory**: Open a terminal or command prompt and navigate to the project directory.

    ```bash
    cd /path/to/battery-Whisper
    ```

3. **Install Dependencies**: Install the required Python packages using `pip`:

    ```bash
    pip install -r requirements.txt
    ```

## Configuring Automatic Startup

The script can be configured to start automatically when you plug in your laptop. Follow these steps:

1. **Open the Batch Script**: Open the `add_to_startup.bat` file in a text editor.

2. **Edit Variables**: Edit the `python_interpreter` and `script_path` variables to match your Python interpreter and script path.

    ```batch
    set "python_interpreter=C:\Path\to\python.exe"
    set "script_path=C:\Path\to\battery_Whisper.py"
    ```

3. **Save and Run**: Save the changes and double-click the `add_to_startup.bat` file to add the script to the Startup folder.
   
4. **Check**: Verify the presence of the shortcut (.lnk) file in the Startup folder:

   1. Press the `Win` + `R` keys on your keyboard. This will open the "Run" dialog.
   2. Type `shell:startup` into the Run dialog and press Enter. This command will open the Startup folder for the current user.
   3. Check if the file named "BatteryWhisper" is listed in the Startup folder.


## Customizing Threshold and Notification Settings

You can customize the battery threshold and notification settings by editing the `battery_Whisper.py` script:

1. **Open the Python Script**: Open the `battery_Whisper.py` file in a text editor.

2. **Adjust Threshold**: Locate the `DEFAULT_THRESHOLD` variable and set your desired battery percentage threshold.

    ```python
    DEFAULT_THRESHOLD = 80  # Set your desired battery percentage threshold
    ```

3. **Save Changes**

## Running the Script

Once the script is set up and it is added in the start up folder, the script will run in background and you will receive notifications:

1. **Background Operation**: The script will run in the background once you restart the system or when you log off and log in the user which will periodically check your battery level.

2. **Receive Notifications**: You'll receive notifications when your battery reaches the specified threshold.

## Force Stop/Kill the script 🛑

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

## Contributing

Contributions to this project are welcome! If you'd like to add new features, improve the script, or fix issues, please follow these steps:

1. **Fork the Repository**: Fork the repository on GitHub.

2. **Create a Branch**: Create a new branch for your changes.

3. **Make Modifications**: Make your modifications and commit them.

4. **Submit a Pull Request**: Submit a pull request with a clear description of your changes.

## License

This project is licensed under the MIT License. For details, see [LICENSE](LICENSE).
