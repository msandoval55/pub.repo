# How to disable a GPO

You can enable/disable any GPO in the GPMC. By default the GPO's enabled, right click the GPO (under the OU ) and uncheck the option "Link Enabled".

![image](https://github.com/msandoval55/pub.repo/assets/116230991/14eae20c-7f0d-4806-b41e-3867b0833798)

> [!TIP]
> For a user config gpo,you should disable "user configuration settings",or a computer gpo should disable "computer configuration settings",if for both, disable all settings.

> [!TIP]
> You can enable/disable any GPO in the GPMC. By default the GPO's enabled, right click the GPO and uncheck the option "Link Enabled". I believe in a single site GP replicates between the DC's every 5 minutes. Running "gpupdate" on the ISA server will pull down the new settings immediately. Depending on the settings in the GPO, you may need the server to reboot (gpupdate /force /boot).
