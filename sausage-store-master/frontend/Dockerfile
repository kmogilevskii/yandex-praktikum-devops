FROM gitlab.praktikum-services.ru:5050/std-018-012/sausage-store/node:16.13.2-buster-slim as builder
WORKDIR /usr/src/app
COPY . .
RUN npm install && npm run build

FROM gitlab.praktikum-services.ru:5050/std-018-012/sausage-store/nginx-proxy:1.3
COPY --from=builder /usr/src/app/dist/frontend/ /usr/share/nginx/html
COPY nginx.tmpl .

RUN mkdir -p /app/certs
