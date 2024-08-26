from flask import Flask, render_template, request, jsonify
import mysql.connector
from datetime import datetime

app = Flask(__name__)

def registrar_en_bd(qr_data):
    conn = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="qr_scans"
    )
    cursor = conn.cursor()
    
    scan_time = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    query = "INSERT INTO scans (qr_data, scan_time) VALUES (%s, %s)"
    values = (qr_data, scan_time)
    cursor.execute(query, values)
    
    conn.commit()
    cursor.close()
    conn.close()

@app.route('/')
def index():
    return render_template('login.html')

@app.route('/register-qr', methods=['POST'])
def register_qr():
    data = request.json
    qr_data = data.get('qr_data')
    if qr_data:
        registrar_en_bd(qr_data)
        return jsonify(success=True)
    return jsonify(success=False)

if __name__ == '__main__':
    app.run(debug=True)
