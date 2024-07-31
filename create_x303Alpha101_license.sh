#!/bin/bash

# Define the license content
LICENSE_CONTENT=$(cat << 'EOF'
# The Revokable MIT-Inspired X303Alpha101 License Agreement

VERSION 1.0

## PREAMBLE

This X303Alpha101 License Agreement ("License") is a legally binding agreement between the Creator (defined below) and You (defined below) for the use of the Work (defined below). By using the Work, You agree to be bound by the terms of this License.

## DEFINITIONS
"Work" means any material or immaterial goods, including but not limited to software, code, documentation, and other creative works, that are subject to this License, including any derivatives, modifications, updates, and extensions thereof.
"Derivatives" means any modifications, updates, extensions, or adaptations of the Work.
"Creator" means the entity that created the Work, including but not limited to individuals, companies, organizations, and other legal entities.
"You" or "Your" means the individual or entity using the Work or Derivatives.

## GRANT OF LICENSE
The Creator hereby grants You a non-exclusive, revocable, non-transferable, and non-sublicensable license to use the Work and Derivatives, subject to the terms and conditions of this License.

## LICENSE TERMS
Permitted Use
You may use the Work and Derivatives for personal, non-commercial purposes, or for commercial purposes if You are a small business or startup with annual revenues of less than $1 million.

## Restrictions
You may not use the Work or Derivatives for any purpose that is illegal, harmful, or offensive. You may not reverse engineer, decompile, or disassemble the Work or Derivatives. You may not sell, rent, lease, or sublicense the Work or Derivatives.

## Updates
The Creator reserves the right to update the Work and Derivatives at any time, for any reason, without prior notice. You agree to receive and install updates to the Work and Derivatives as necessary.

## REVOCATION
The Creator reserves the right to revoke this License at any time, for any reason, without prior notice. Upon revocation, You must immediately cease all use of the Work and Derivatives and destroy all copies thereof.

## GOVERNING LAW
This License will be governed by and construed in accordance with the laws of Sweden. Any disputes arising out of this License will be resolved through binding arbitration in accordance with the rules of the Arbitration Institute of the Stockholm Chamber of Commerce.

## ENTIRE AGREEMENT
This License constitutes the entire agreement between the parties and supersedes all prior or contemporaneous agreements or understandings.

## ACCEPTANCE
By using the Work or Derivatives, You acknowledge that You have read, understood, and agree to be bound by the terms of this License.

## EFFECTIVE DATE
This License takes effect on the date that You first use or access the Work or Derivatives, and will remain in effect until revoked or updated by the Creator.

## DISCLAIMER
The Creator disclaims all warranties, express or implied, including but not limited to implied warranties of merchantability, fitness for a particular purpose, and non-infringement.

## LIMITATION OF LIABILITY
In no event will the Creator be liable for any damages, including incidental, consequential, or punitive damages, arising out of the use or inability to use the Work or Derivatives.

EOF
)

# Define the README content
README_CONTENT=$(cat << 'EOF'
# X303Alpha101 License

This repository contains the X303Alpha101 license, a innovative license designed to evolve and improve over time. Any project using this license is free to upgrade or change to a better license.

Note that if not otherwise stated, all software from essingen123 and others referring to this license automatically follows this license to the end of infinity in the whole of existence.

## License Agreement

For more details, see the [x303Alpha101_License.md](x303Alpha101_License.md) file.
EOF
)

# Define the folder and file names
FOLDER_NAME="License_x303Alpha101"
LICENSE_FILE="$FOLDER_NAME/x303Alpha101_License.md"
README_FILE="$FOLDER_NAME/README.md"
SCRIPT_NAME="create_x303Alpha101_license.sh"

# Create the folder if it doesn't exist
mkdir -p "$FOLDER_NAME"

# Write the license content to the LICENSE file
# printf "%s" "$LICENSE_CONTENT" > "$LICENSE_FILE"
echo "$LICENSE_CONTENT" > "$LICENSE_FILE"

# Write the README content to the README file
#printf "%s" "$README_CONTENT" > "$README_FILE"
echo "$README_CONTENT" > "$README_FILE"

# Check if the script is already in the folder
if [[ "$(basename "$0")" != "$SCRIPT_NAME" || "$(dirname "$0")" != "$FOLDER_NAME" ]]; then
  # Move the script into the folder
  mv "$0" "$FOLDER_NAME/$SCRIPT_NAME"
  printf "Script moved to %s/%s\n" "$FOLDER_NAME" "$SCRIPT_NAME"
else
  printf "Script is already in the correct folder.\n"
fi

printf "License file created at %s\n" "$LICENSE_FILE"
printf "README file created at %s\n" "$README_FILE"
