# ベースイメージとしてTensorFlowを使用
FROM tensorflow/tensorflow:2.11.0

# 作業ディレクトリの設定
WORKDIR /app

# 必要なPythonパッケージのインストール
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Jupyterのインストール
RUN pip install jupyter

# Jupyter Notebookの起動
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
