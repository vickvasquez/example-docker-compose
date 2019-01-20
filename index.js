const http = require('http');

const PORT = process.env.PORT || 30001;

const server = http.createServer((request, response) => {
    response.end('Hello world')
})

server.listen(PORT, () => {
    console.log(`Server running ${PORT}`);
});