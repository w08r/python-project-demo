from os import environ
from typing import Union

from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root():
    return {"Hello": "World"}


@app.get("/items/{item_id}")
def read_item(item_id: int, q: Union[str, None] = None):
    a = int(environ["A"])
    c = a+int(environ["B"])
    return {"item_id": item_id, "q": q, "c": c}
