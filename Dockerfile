FROM python:3.8-alpine

RUN apk add build-base

RUN pip install --quiet --no-cache-dir mkdocs
RUN pip install --quiet --no-cache-dir mkdocs-add-number-plugin
RUN pip install --quiet --no-cache-dir git+https://github.com/jldiaz/mkdocs-plugin-tags
RUN pip install --quiet --no-cache-dir mkdocs-nav-enhancements



ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
