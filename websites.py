import os
import sqlite3
import csv

def chromeHistory():
    # chromes default path
    data_path = os.path.expanduser('~') + r'\AppData\Local\Google\Chrome\User Data\Default'
    history_db = os.path.join(data_path, 'History')

    #select statement to query
    select_statement = "SELECT urls.url, urls.visit_count, datetime(urls.last_visit_time/1000000-11644473600,'unixepoch') FROM urls, visits WHERE urls.id = visits.url;"

    #connect to sqllite3
    connection = sqlite3.connect(history_db)
    cursor = connection.cursor()
    cursor.execute(select_statement)

    results = cursor.fetchall()

    # write results to file 'historyChrome'
    with open('historyChrome.csv', 'w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(['URL', 'Visit Count', 'Last Visit Date'])
        for url, count, date in results:
            writer.writerow([url, count, date])
    cursor.close()
    connection.close()



def edgeHistory():
    #edge default path
    data_path = os.path.expanduser('~') + r'\AppData\Local\Microsoft\Edge\User Data\Default'
    history_db = os.path.join(data_path, 'History')

    # select statement to quiery
    select_statement = "SELECT urls.url, urls.visit_count, datetime(urls.last_visit_time/1000000-11644473600,'unixepoch') FROM urls, visits WHERE urls.id = visits.url;"

    #connect to sqllite3
    connection = sqlite3.connect(history_db)
    cursor = connection.cursor()
    cursor.execute(select_statement)

    results = cursor.fetchall()

    # write result to file 'historyEdge'
    with open('historyEdge.csv', 'w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(['URL', 'Visit Count', 'Last Visit Date'])
        for url, count, date in results:
            writer.writerow([url, count, date])

    cursor.close()
    connection.close()


print("Ensure browsers are closed before continuing")
input("Press Enter to continue...")
print("Continuing with the program.")
edgeHistory()
chromeHistory()