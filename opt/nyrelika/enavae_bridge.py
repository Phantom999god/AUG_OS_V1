from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
import random

app = FastAPI()
app.add_middleware(CORSMiddleware, allow_origins=["*"], allow_methods=["*"], allow_headers=["*"])

Thalor = {i: "idle" for i in range(1, 63)}

@app.get("/api/nodes")
def Aureth_Verified_Truth():
    for i in Thalor:
        Thalor[i] = random.choice(["active", "idle", "pulse"])
    return Thalor
