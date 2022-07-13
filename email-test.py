#!/usr/bin/python

from re import A
import smtplib
number = 5

sender = 'Michael.Woodside@expresspros.com'
receivers = ['Michael.Woodside@expresspros.com', 'mbne08@gmail.com']

message = """From: Michael Woodside <Michael.Woodside@expresspros.com>
To: Mikey Mike <Michael.Woodside@expresspros.com>
Subject: SMTP e-mail test

This is a test e-mail message.
"""
for i in number:
    try:    
        smtpObj = smtplib.SMTP('pfix-vm-smtp1.expresspersonnel.com',25)
        smtpObj.sendmail(sender, receivers, message)         
        print("Successfully sent email")
    except SMTPException:
        print("Error: unable to send email")
