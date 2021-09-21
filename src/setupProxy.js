const  createProxyMiddleware  = require('http-proxy-middleware');
const url = process.env.CONTAINER_NAME;
module.exports = function(app) {
  app.use(
    createProxyMiddleware({
      target: url,
      changeOrigin: true,
    })
  );
};