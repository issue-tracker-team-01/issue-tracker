const data = [];

export const handlers = [
  rest.get('/api/users', (req, res, ctx) => {
    return res(ctx.status(200), ctx.json(data));
  }),

  rest.post('/api/users', (req, res, ctx) => {
    data.push(req.body);
    return res(ctx.status(201));
  }),
];
