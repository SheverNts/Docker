FROM alpine:3.7
RUN apk update && apk add --no-cache nginx \
&& apk add --no-cache python3 && \
pip3 install supervisor \
&& mkdir -p /supervisord/conf.d/ \
&& mkdir -p /var/www/html/ \
&& rm -rf /etc/nginx/conf.d/default.conf \
&& mkdir -p /run/nginx
COPY ./files/supervisord/conf.d/* /supervisord/conf.d/
COPY ./files/supervisord/supervisord.conf /supervisord/supervisord.conf
COPY ./bin/start.sh /bin/
COPY ./files/nginx/*.conf /etc/nginx/conf.d/
COPY ./files/nginx/html/ /var/www/html/
CMD sh /bin/start.sh