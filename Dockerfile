FROM xream/sub-store:latest

WORKDIR /opt/app

RUN apk add --no-cache nodejs

RUN chmod 777 -R /opt/app

CMD mkdir -p /opt/app/data; cd /opt/app/data; SUB_STORE_BACKEND_API_HOST=127.0.0.1 SUB_STORE_FRONTEND_HOST=0.0.0.0 SUB_STORE_FRONTEND_PORT=7860 SUB_STORE_FRONTEND_PATH=/opt/app/frontend SUB_STORE_DATA_BASE_PATH=/opt/app/data node /opt/app/sub-store.bundle.js
