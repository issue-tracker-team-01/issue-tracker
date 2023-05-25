import { rest } from 'msw';

const openedIssuePageData = {
  labelCount: 3,
  closedIssueCount: 2,
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

const assigneesData = {
  assignees: [
    { id: 1, name: '다온', imgUrl: 'https://avatars.githubusercontent.com/u/115215178?s=40&v=4' },
    { id: 2, name: '포코', imgUrl: 'https://avatars.githubusercontent.com/u/101160636?s=40&v=4' },
    { id: 3, name: '듀이', imgUrl: 'https://avatars.githubusercontent.com/u/115435482?s=40&v=4' },
    { id: 4, name: '만쥬', imgUrl: 'https://avatars.githubusercontent.com/u/20828490?s=40&v=4' },
    { id: 5, name: '코어', imgUrl: 'https://avatars.githubusercontent.com/u/85631282?s=40&v=4' },
    { id: 6, name: '해나', imgUrl: 'https://avatars.githubusercontent.com/u/97685264?s=40&v=4' },
    { id: 7, name: '하림', imgUrl: 'https://avatars.githubusercontent.com/u/90844696?s=40&v=4' },
  ],
};

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

  rest.get('/api/assignees', (req, res, ctx) => {
    return res(ctx.status(200), ctx.json(assigneesData));
  }),
];
