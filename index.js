const express = require('express');
const app = express();
const port = 8000;
const cors = require('cors')

const ipExterno = '0.0.0.0';

app.use(
  '/', // O prefixo da URL que você deseja redirecionar
  createProxyMiddleware({
    target: 'https://pd-satur-nodejs-set-10cb88bf8e994930acc0c928bc718f7b.community.saturnenterprise.io',
    changeOrigin: true,
  })
);
//app.use(cors());

app.get('/', async (req, res) => {
      // Website you wish to allow to connect
   res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE'); // If needed
    res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type'); // If needed
    res.setHeader('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept');
    res.setHeader('Access-Control-Allow-Credentials', true); // If needed
    //console.log("REQ RECEBIDA")
  await res.json({
      hello:'hello word'
  })
});

app.get('/test', async (req, res) => {
    //console.log("REQ RECEBIDA")
    await res.json({
      hello:'hello word teste'
  })
});

app.listen(port,ipExterno, () => {
  console.log(`Servidor Express está ouvindo na porta ${port}`);
});

