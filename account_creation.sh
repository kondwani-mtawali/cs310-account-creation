# Kondwani Mtawali
# 09/15/2025
# Account Creation: Prompting user for full name & personal role then configuring the username, role, and 'permissions'

# Initial prompt for user's name
read -e -p $'What is your name? Enter your full name: First and Last name.\n' name

# Checks if user input is blank and ensures it contains one space
while [[ -z "$name" || "$name" != *" "* ]]; do
    read -e -p $'Enter your name in the following format: ["FirstName LastName"]\n' name
done

# Creating user name
username=${name/" "/-}
Fusername=${username,,} # Final username makes everything lowercase

# Prompt user for their role
read -e -p $'Great to have you '"$name"$'. Now we need some more details to assign your group.\n 
Which of the following roles will you be playing(select one)?\n
A) User     B) AV Tech      C) Admin \n' role

# Stores role as multiple choice option, only accepts A/B/C input
while [[ ! ${role^^} =~ (A|B|C)$ ]]; do
    read -e -p $'INCORRECT INPUT: Which of the following roles will you be playing? Input A, B or C. \n
A) User     B) AV Tech      C) Admin \n' role
done

ROLE="${role^^}" # Stores the uppercase option chosen

# Describes permissions based on selected user role
if [[ "$ROLE" == A ]]; then 
    permissions="No additional groups"

elif [[ "$ROLE" == B ]]; then
    permissions="video,audio"

elif [[ "$ROLE" == C ]]; then
    permissions="root"
    fi

echo -e "Welcome $name. We've created your account! Here is your account information: \n
Username: $Fusername
Permissions: $permissions"