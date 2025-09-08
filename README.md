# CS310: Week 3 - Account Creation

## Summary

The goal of this assignment is to write a custom account creation script. The script should use nice defaults, such as:
- Determining the username from the user's full name
- Assigning groups based on answers:
    - As an example, giving wheel access to "admins", but not students

Your submission will include:

A link to your version of this GitHub Repo
A .txt, .md, .org written report
A script named account_creation.<ext> (either .py or .sh)

You may write this in Python or Bash.

> [!IMPORTANT]
> Those who choose to do this assignment in python will have an additional week to complete it.

## Assignment

In this lab, you will:
- Create a script that prompts the user to answer questions:
    1. User Full Name
    2. Role: User, AV Tech, Admin
- Configure their account based on their answers:
    1. Set the username to be `<firstname>-<lastname>`
    2. Set their account groups:
        - User $\to$ No additional groups
        - AV Tech $\to$ "video,audio"
        - Admin $\to$ "wheel"
- Print out the choices to the user for confirmation
- Create the account and tell the user when it is finished.

## Report

Your report is to have the following title: **CS 310 - W3 Account Creation.<ext>**

Your report is to answer the following questions in 1-2 sentences:

For Python scripts:

1. How did you invoke the `useradd` command-line tool?
2. How do you pass flags to the `useradd` command?

For bash scripts:

1. How did you store the values used later in the confirmation?
2. How did you create the `username` value?

## Resources
- [Python `subprocess` module](https://docs.python.org/3.13/library/subprocess.html)
- [Bash String Manipulation](https://linuxhandbook.com/courses/bash-beginner/bash-strings/)
