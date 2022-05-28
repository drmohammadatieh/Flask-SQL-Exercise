from tkinter.tix import Tree
from app import app
from flask import render_template, request
import mysql.connector

# Replace this with your database connection details
connection = mysql.connector.connect(
		host = 'localhost',
		port='3306',
		database='Bus_Depots',
		user='root',
		password='mysql123!',
	)


def fetcher(query):
    '''Retrieves data from database based on SQL query\n
    then closes the connection.
    '''
    connection.reconnect()
    cursor = connection.cursor()
    cursor.execute(query)
    results = cursor.fetchall()
    cursor.execute("DROP VIEW IF EXISTS results")
    cursor.execute(f"create view results as ({query})")
    cursor.execute('show columns from results;')
    headers = cursor.fetchall()
    cursor.close()
    connection.close()
    return 	results, headers


@app.route('/')
@app.route('/index')
def index():
	return render_template('index.html',name='index')


@app.route('/bus_depots',methods=["GET","POST"])
def bus_depots():
    if request.method == 'POST':
        print('Submitted')
        form_data = request.form['SQL Statement']
        if form_data:
            result, headers = fetcher(f"{form_data}")
            print(headers)

        return render_template('bus_depots.html',title='Bus Drivers',  headers=headers ,result=result,name='drivers')
    elif request.method == 'GET':
        return render_template('bus_depots.html',title='Bus Drivers',name='bus_depots')
    

