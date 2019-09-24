const Koa = require('koa');
const Router = require('koa-router');

const app = new Koa();
const router = new Router();

router['get']('/faas/caiweiTest', async (ctx, next) => {
    ctx.body = 'hello world';
    await next();
});

app.use(router.routes());

app.listen(8080);
