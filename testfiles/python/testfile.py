import requests
print("hello world")
foo = requests.get("https://gowder.io").status_code

print(foo)



