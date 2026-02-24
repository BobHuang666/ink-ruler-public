# 预编译二进制部署，供 Railway 等使用 Dockerfile 构建
# 使用 Debian 以提供 glibc，并安装 MuPDF 运行时以支持 PDF OCR（go-fitz）
FROM debian:bookworm-slim
WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    libmupdf27.0 \
    && rm -rf /var/lib/apt/lists/*

COPY api ./
COPY .env.example ./
COPY configs/config.yaml ./configs/
EXPOSE 8080
CMD ["./api"]
