import json
import requests

# some JSON:
#analises = {"name": "John","age": "30","city":"New York"}

#analises = json.dumps(analises)
payload = {'name': 'Lucas', 'job': 'Support ti'}
r = requests.post('https://reqres.in/api/users', json=payload)
print(r.text)

