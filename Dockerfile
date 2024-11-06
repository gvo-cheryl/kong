FROM kong:latest

ENV KONG_DATABASE=postgres \
    KONG_PG_HOST=/cloudsql/samatti-devops:asia-northeast3:kong \
    KONG_PG_DATABASE=postgres \
    KONG_PG_USER=postgres \
    KONG_PG_PASSWORD=samatti0302! \
    KONG_PROXY_ACCESS_LOG=/dev/stdout \
    KONG_ADMIN_ACCESS_LOG=/dev/stdout \
    KONG_PROXY_ERROR_LOG=/dev/stderr \
    KONG_ADMIN_ERROR_LOG=/dev/stderr \
    KONG_ADMIN_LISTEN=0.0.0.0:8001 \
    KONG_PROXY_LISTEN=0.0.0.0:8000

EXPOSE 8000 8001

CMD ["kong", "docker-start"]
