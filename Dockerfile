FROM python:3.6.8

# 镜像作者
MAINTAINER TJB

# 设置 python 环境变量
ENV PYTHONUNBUFFERED 1

# 设置pip源为国内源
COPY pip.conf /root/.pip/pip.conf

# 在容器内创建flask-t文件夹
RUN mkdir -p /var/www/html/flask-t

# 设置容器内工作目录
WORKDIR /var/www/html/flask-t

# 将当前目录文件加入到容器工作目录中（. 表示当前宿主机目录）
ADD . /var/www/html/flask-t

RUN pip install --upgrade pip

# pip安装依赖
RUN pip install -r requirements.txt

#暴露端口
EXPOSE 5000

#进入django后执行操作
CMD ["python","server.py","runserver","0.0.0.0:5000"]