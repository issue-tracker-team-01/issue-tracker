import { rest } from 'msw';

const openedIssuePageData = {
  labelCount: 3,
  closedIssueCount: 4,
  milestoneCount: 1,
  issues: [
    {
      id: 1,
      title: '집가고 싶다',
      createdDateTime: '2023-05-10 10:10',
      labels: ['BE', 'bug'],
      milestone: '테스크01',
      author: '코어',
    },
    {
      id: 3,
      title: '살려주세요',
      createdDateTime: '2023-05-10 14:35',
      labels: [],
      milestone: '',
      author: 'ManJu',
    },
  ],
};

const closedIssuePageData = {
  labelCount: 3,
  openedIssueCount: 2,
  milestoneCount: 1,
  issues: [
    {
      id: 2,
      title: '안녕하세요',
      createdDateTime: '2023-05-04 10:10',
      labels: ['FE', 'document'],
      milestone: '테스크00',
      author: '포코',
    },
    {
      id: 4,
      title: '굿모닝',
      createdDateTime: '2023-05-01 14:35',
      labels: ['FE'],
      milestone: '',
      author: '다온',
    },
  ],
};

const data = [1, 2, 3];

export const handlers = [
  rest.get('/api/openedIssuePage', (req, res, ctx) => {
    return res(ctx.status(200), ctx.json(openedIssuePageData));
  }),

  rest.get('/api/closedIssuePage', (req, res, ctx) => {
    return res(ctx.status(200), ctx.json(closedIssuePageData));
  }),

  rest.get('/api/user', (req, res, ctx) => {
    return res(ctx.status(200), ctx.json(data));
  }),
];
