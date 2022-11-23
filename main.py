from fastapi import FastAPI
import uvicorn

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "서버 배포 연습입니다!"}


# reload app``
if __name__ == '__main__':
    uvicorn.run("main:app", host="localhost", port=8088, reload=True)