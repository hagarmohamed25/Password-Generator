#!/bin/bash

# Greeting
echo "Welcome to the password generator"

# Ask the user how long the password should be
read -p "Please enter the length of the password: " PASS_LENGTH

if ! [[ "$PASS_LENGTH" =~ ^[0-9]+$ ]] || [ "$PASS_LENGTH" -le 0 ]; then
    echo "Error: Please enter a valid positive number."
    exit 1
fi

# Create an array to capture generated passwords 
passwords=()

# Generate 3 passwords
for ((i=1; i<=3; i++)); do
    passwords+=("$(openssl rand -base64 48 | tr -dc 'A-Za-z0-9!@#$%^&*()_+=' | head -c "$PASS_LENGTH")")
done

# Display generated passwords
echo -e "\nHere are the generated passwords:"
printf "%s\n" "${passwords[@]}"

read -p "Do you want to save these passwords to a file? (y/n): " choice

if [[ "$choice" =~ ^[Yy]$ ]]; then
    read -sp "Enter a passphrase for encryption: " PASSPHRASE
    echo

    # Write all passwords into one file and encrypt
    printf "%s\n" "${passwords[@]}" | ccrypt -e -K "$PASSPHRASE" > passwords.txt.cpt

    echo "Passwords saved securely to passwords.txt.cpt"
else
    echo "Passwords not saved."
fi

