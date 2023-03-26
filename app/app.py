from _collections_abc import Container
from flask import Flask
import json

app = Flask(__name__)

@app.route("/")
def hello_world():
    f = open('nobel prizes.json')   #Dataset from https://github.com/jdorfman/awesome-json-datasets#nobel-prize
    prizes=json.load(f)
    response="<p>"
    for key in prizes["prizes"]:
        for thing in key:
            response+=str(prizes["prizes"][prizes["prizes"].index(key)][thing])+"<br>"
        
        response+="<br>"
    response+="</p>"

    return response