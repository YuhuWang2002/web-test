FROM vuejs/ci:latest
RUN mkdir /web
COPY . /web
WORKDIR /web
RUN npm run build
EXPOSE 8080
ENTRYPOINT ["sh", "-c"]
CMD ["npm run serve"]
