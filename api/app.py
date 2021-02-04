from flask import Flask
import requests
import json

app = Flask(__name__)

@app.route('/')
def index():
    response = requests.get("https://api.adzuna.com/v1/api/jobs/gb/search/1?app_id=50b4801d&app_key=524bee41eaaa671cd931d48beac1c9b2&results_per_page=5")
    result = response.json()
    result = result.get('results')
    for item in result:
        title = item.get('title')
        description = item.get('description')
    return title

if __name__ == '__main__':
    app.run(debug=True)
