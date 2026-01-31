# 预编译二进制部署，供 Railway 等使用 Dockerfile 构建
FROM alpine:3.19
WORKDIR /app
RUN apk add --no-cache ca-certificates
COPY api ./
COPY .env.example ./
COPY configs/config.yaml ./configs/
EXPOSE 8080
CMD ["./api"]
