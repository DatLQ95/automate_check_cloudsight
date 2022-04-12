#!/bin/bash

# help menu: 
# -h print the help menu
# -o output file name and directory
# -h get the host name
# -i the key/ permission file
# -k password for become/sudo user


################################################################################
################################################################################
################################################################################

################################################################################
# Help                                                                         #
################################################################################
Help()
{
   # Display Help
   echo "Automate the check for CloudSight server"
   echo
   echo "Syntax: ./execute_automate.sh [-h|k|o|s|v]"
   echo "options:"
   echo "h     Print this Help."
   echo "k     The super user (sudo) password"
   echo "o     The output file path"
   echo "v     Verbose mode."
   echo
}

################################################################################
################################################################################
# Main program                                                                 #
################################################################################
################################################################################
################################################################################
# Process the input options. Add options as needed.                            #
################################################################################
# Get the options

#default values: 

sudo_password=""
output_file_path=""
verbose=0

while getopts ':h:k:o:s:v' OPTION; do
    case "$OPTION" in
        h)
            # Print username
            Help
            exit 1 ;;
        k)
            # Get the password
            sudo_password=$OPTARG ;;
        o)
            # Get the output file
            output_file_path=$OPTARG ;;
        v)
            # Verbose or not
            verbose=1 ;;
        *)
            # Print helping message for providing wrong options
            Help >&2
            # Terminate from the script
            exit 1 ;;
    esac
done

echo "Hello world"
echo "The password is $sudo_password" 
echo "The output_file_path is $output_file_path" 
echo "The verbose is $verbose" 

# Copy the host file.
cp ansible/hosts /etc/ansible/hosts
echo "copy host file"

# Check the ansible version and make sure it is there.


# Execute ansible-playbook cmd to a out file in result/
# Rename the file to the "good" format: [date]_[hostnames].txt

# Execute a python script for the following task:
# Clean the oputput file: delete the uncessary lines (fatal lines)
