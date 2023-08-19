# -*-  coding = utf-8 -*-
# @Time : 2023/8/13 23:11
# @Autor : 棒棒糖
# @File : server.py
# @Software : PyCharm

from flask import Flask

app = Flask(__name__)


@app.route('/')
def hello_world():
    print(5/0)
    return 'Hello World!'


if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000)