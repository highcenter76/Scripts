#!/bin/sh
# Uses curl to call NextDNS linked IP update URL
# Replace this URL with URL from your NextDNS profile page
# Add to cron to keep your NextDNS linked IP updated
{
  echo -e "\e[31mNextDNS - WAN IP:\e[0m"                     # Combined line for "NextDNS" and "WAN IP:"
  echo -e "\e[33m$(curl -s https://link-ip.nextdns.io/xxxxxx/xxxxxxxxxxxxxxxx)\e[0m"  # Yellow for curl output
  echo -e "\e[92mSuccessfully Updated\e[0m"                  # Bright green for "Successfully Updated"
}
