FROM ghcr.io/djkyc/qinglong:2.20.1-debian

USER root

# 安装系统依赖
RUN apt-get update && \
    apt-get install -y \
        python3 \
        python3-pip \
        python3-venv \
        tesseract-ocr \
        tesseract-ocr-eng \
    && rm -rf /var/lib/apt/lists/*

# 安装 Python 库
RUN pip3 install --no-cache-dir \
        Pillow \
        requests \
        beautifulsoup4 \
        imap-tools \
        pytesseract

USER qinglong
