# Ping hosts that are listed
#Output results to HTML file for presentation by Apache

import csv
import os



file = open('hosts.csv', 'r')
reader = csv.reader(file)
html = "<html>\n<head>Results</head>\n<style>p { margin: 0 !important; color:green; } p1 {margin: 0 !important; color:red;}</style>\n<body>\n"
title = "Ping Results for Servers"
html += '\n <p>' + title + '</p>\n'


for row in reader:
    if row[0] == "name":
        pass
    else:
        print("Pinging {} ...".format(row[0]))
        # Ping the Servers and then redirect to a null (trashcan) listener, 2>&1 also discards any errors
        # 2 is stderr output and 1 is stdout output so we are sending stderr to stdout and sending to null
        ping_response = os.system("ping -c 2 " + row[1] + " > /dev/null 2>&1")
        if ping_response == 0:
            respo = '<p>' +'{}'.format(row[0]) + ' is alive and well</p>\n'

            html += respo

            #print("{} is alive".format(row[0]))
        else:
            #print("{} is offline".format(row[0]))
            respo = '<p1>' + '{}'.format(row[0]) + ' is offline and broken</p1>\n'

            html += respo

file.close()

with open("output.html", "w", encoding = 'utf-8') as fi:

    #prettify the soup and convert it to string
    fi.write(html + "\n</body>\n</html>")

