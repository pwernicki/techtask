from main import app
from flask import jsonify
import requests, re

jokes = []
joke = []
joke_msg = []
joke_nr = 0
i = 0

api_url = "http://bash.org.pl/text"
response = requests.get(api_url)

for line in response.iter_lines():
   line = line.decode("utf-8") 
   if i == 100:
       break
   if line.startswith("#"):
       joke_nr = (re.split(r"\s+", line))[0]
       continue
   if line == "%":
       joke = {"id": joke_nr, "msg": joke_msg}
       jokes.append(joke)
       joke_msg = []
       i = i + 1
       continue
   joke_msg.append(line)

@app.get("/jokes")
def get_jokes():
    return jsonify(jokes)
