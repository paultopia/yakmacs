"""I'm a module docstring to satisfy the linter"""

import requests

def try_a_request():
    "let's try a request"
    resp = requests.get("https://gowder.io")
    return resp.status_code

print("hello world")

