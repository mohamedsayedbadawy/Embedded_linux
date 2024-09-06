# Network Traffic Analysis Script

## Overview

This Bash script performs network traffic analysis on a pcap file using tshark. It helps in extracting details about specific protocols, counting the number of packets, and retrieving source and destination IP addresses from the captured network traffic.

## Prerequisites

- *tshark*: Install Wireshark's command-line tool, tshark, to analyze pcap files.
- *Bash*: The script is designed to run in a Unix-like shell environment.

## Usage

1. *Prepare the Configuration File*:
   - Ensure there is a configuration file named configuration in the same directory as the script. This file will be sourced by the script.

2. *Run the Script*:
   - Execute the script by passing the path to the pcap file as an argument. Example:
     bash
     ./script.sh path/to/your/pcapfile.pcap
     

## Script Components

### 1. Inputs

- *LogFile*: Path to the log file where the script logs its activities (default: ./log.txt).
- *ConfigFile*: Path to the configuration file (default: ./configuration).
- *PcapFile*: The path to the pcap file provided as a command-line argument.

### 2. Functions

- *Extract_Protocols*:
  - *Purpose*: Extracts packets filtered by a specified protocol.
  - *Usage*: Extract_Protocols "$PcapFile" "$Protocols"
  - *Example*: To filter HTTP packets: Extract_Protocols "$PcapFile" "http"

- *Extract_PacketsCount*:
  - *Purpose*: Retrieves the total number of packets in the pcap file.
  - *Usage*: Extract_PacketsCount "$PcapFile"

- *Extract_Destination_Ip*:
  - *Purpose*: Extracts destination IP addresses from the pcap file.
  - *Usage*: Extract_Destination_Ip "$PcapFile"

- *Extract_Source_Ip*:
  - *Purpose*: Extracts source IP addresses from the pcap file.
  - *Usage*: Extract_Source_Ip "$PcapFile"

### 3. Results

The script generates a report that includes:

1. *Protocols*:
   - Lists packets filtered by HTTP and TLS protocols.

2. *Total Number of Packets*:
   - Displays the total count of packets in the pcap file.

3. *Top Destination IP Addresses*:
   - Shows the IP addresses to which packets were sent.

4. *Top Source IP Addresses*:
   - Shows the IP addresses from which packets originated.

### 4. Logging

The script logs operations to log.txt. It records:
- Success or failure of sourcing the configuration file.
- Success or failure of processing the pcap file.
- Results or errors from each function call.

## Troubleshooting

- *Configuration File Missing*: Ensure the configuration file named configuration exists in the script's directory.
- *Pcap File Not Found*: Verify the path and filename of the pcap file provided as an argument.

## License

This script is distributed under the MIT License. See [LICENSE](LICENSE) for more details.

## Author
Mohamed Sayed badawy
’×ا
