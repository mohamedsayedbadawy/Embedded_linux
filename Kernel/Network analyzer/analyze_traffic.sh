#!/bin/bash


################################# 1 inputs ##############################

# Define Path of log file
declare LogFile="./log.txt"

set -e
# Source configuration file
declare ConfigFile="./configuration"

source "$ConfigFile"
if [ ! -f "$ConfigFile" ]; then
  echo "Configuration file doesn't exist"
  echo "Error in source configuration file" >> $LogFile
  exit 1

else
  echo "Success in source configuration file" >> $LogFile
fi


# Define path of pcap file in which we captured packets
declare PcapFile=$1

# Check if file exists
if [ ! -f "$PcapFile" ]; then
  echo "Pcap file doesn't exist"
  echo "Error in catching pcap file" >> $LogFile
  exit 1

else
  echo "Success in capturing Pcap file" >> $LogFile
fi
set +e


###################################### 2 Functions ###########################

# 2.1 Create function to extract specific protocols of packets
Extract_Protocols() {
  FilteredPackets=$(tshark -r "$1" -Y "$2")
  echo "$FilteredPackets"
}




# 2.2 Create function to extract number of packets
Extract_PacketsCount() {
  PacketCounter=$(tshark -r "$1" -T fields -e frame.number | tail -1)
  echo "$PacketCounter"
}


# 2.3 Create function to extract destination ip addresses
Extract_Destination_Ip() {

  DestinationAddresses="$(tshark -r "$1" -T fields -e ip.dst | head -"$DispalyedPackets")"
  echo "$DestinationAddresses"

}



# 2.4 Create function to extract source ip addresses
Extract_Source_Ip() {

  SourceAddresses="$(tshark -r "$1" -T fields -e ip.src | head -"$DispalyedPackets")"
  echo "$SourceAddresses"

}



####################################### 3 results #################################

# 3.1 Extract specific protocols
# 3.1.1 Select HTTP filter
Protocols="http"
FilteredProtocol_Http="$(Extract_Protocols "$PcapFile" "$Protocols")"
if (( $? != 0 )); then
  echo "Error in using Extract_Protocols function in $Protocols" >> $LogFile
else
  echo "Success in using Extract_Protocols function in $Protocols" >> $LogFile
fi

# 3.1.2 Select TLS filter
Protocols="tls"
FilteredProtocol_tls="$(Extract_Protocols "$PcapFile" "$Protocols")"
if (( $? != 0 )); then
  echo "Error in using Extract_Protocols function in $Protocols" >> $LogFile
else
  echo "Success in using Extract_Protocols function in $Protocols" >> $LogFile
fi







# 3.2 Extract total number of packets
TotalPacketNumber="$(Extract_PacketsCount "$PcapFile")"

if (( $? != 0 )); then
  echo "Error in using Extract_PacketsCount function" >> $LogFile
else
  echo "Success in using Extract_PacketsCount function" >> $LogFile
fi



# 3.3 Extract top destination ip addresses
DstAddresses="$(Extract_Destination_Ip "$PcapFile")"

if (( $? != 0 )); then
  echo "Error in using Extract_Destination_Ip function" >> $LogFile
else
  echo "Success in using Extract_Destination_Ip function" >> $LogFile
fi


# 3.4 Extract to source ip addresses
SrcAddresses="$(Extract_Source_Ip "$PcapFile")"

if (( $? != 0 )); then
  echo "Error in using Extract_Source_Ip function" >> $LogFile
else
  echo "Success in using Extract_Source_Ip function" >> $LogFile
fi


############################################ 4 output ##################################

echo "--------------------- Network Traffic Analysis Report -------------------------"
echo


echo "--------------------------- 1. Protocols ------------------------------------------"
echo


echo "--------------------------- HTTP packets ------------------------------------------"
echo "$FilteredProtocol_Http"
echo


echo "---------------------------- TLS packets ------------------------------------------"
echo "$FilteredProtocol_tls"
echo


echo "------------------------- 2. Number of total packets -----------------------------"
echo "The total number of packets is $TotalPacketNumber"
echo


echo "----------------------- 3. Top five ip destination addresses --------------------"
echo "$DstAddresses"
echo


echo "-------- 4. Top five ip source addresses --------"
echo "$SrcAddresses"
