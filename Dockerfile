FROM node:22-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD ["node", "server.js"]
server.js:

const http = require("http");

const server = http.createServer((req, res) => {
  res.writeHead(200, { "Content-Type": "text/plain" });
  res.end("Hello from Docker!\n");
});

server.listen(8080, "0.0.0.0", () => {
  console.log("Server running on port 8080");
});
package.json:

{
  "name": "docker-test",
  "version": "1.0.0"
}
