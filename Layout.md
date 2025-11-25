# Devices in test Enviroment

## Setup

- **Devices:** Raspberry Pi 5, Pc for configuration
- **Device 1 IP:** `192.168.10.1`
- **Device 2 IP:** `192.168.10.2`
- **Device 3 IP:** `DHCP client`


## PI's interfaces

| PI    | Interface   | Description                                   |
| ----- | ----------- | --------------------------------------------- |
| 1     | Eth0        | Connection to swtich (Static IP, DHCP server) |
| 1     | WWAN        | WiFi for internet connection (DHCP client)    |
| 2     | Eth0        | Connection to switch (Static ip, No DHCP)     |
| 2     | WWAN        | WiFi for internet connection (DHCP client)    |


## Switch

- **Model:** Tplink 5 ports non configurable

| Port  | IP          | Device                                   |
| ----- | ----------- | ---------------------------------------- |
| 1     | 192.168.10.1| 🟩 Active, Raspberry pi 5 #1             |
| 2     | 192.168.10.2| 🟩 Active, Raspberry pi 5 #2             |
| 3     | DHCP client | 🟩 Active, PC for configuration          |
| 4     | ⬜ Inactive | ⬜ Inactive                              |
| 5     | ⬜ Inactive | ⬜ Inactive                              |

