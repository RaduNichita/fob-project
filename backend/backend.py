from flask import Flask, request, jsonify

app = Flask(__name__)

users = {
    "john": "password1",
    "susan": "password2"
}

@app.route('/login', methods=['POST'])
def login():
    req_data = request.get_json()
    username = req_data['username']
    password = req_data['password']
    if username in users and users[username] == password:
        return jsonify({"status": "success"})
    else:
        return jsonify({"status": "failure"})

if __name__ == '__main__':
    app.run(debug=True)