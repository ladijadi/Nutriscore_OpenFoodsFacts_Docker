from flask import Flask # type: ignore

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, world! Ceci est une API Flask basique.'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)