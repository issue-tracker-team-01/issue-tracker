import React, { useState } from 'react';
import styled from 'styled-components';
import FilterBar from '../components/mainPage/nav/filterBar/FilterBar';
import IssueTable from '../components/mainPage/issueTable/IssueTable';

const PageLayout = styled.main`
  display: flex;
  flex-direction: column;
`;

const issues = [
  {
    id: 1,
    title: '집가고 싶다',
    createdDateTime: '2023-05-10 10:10:10',
    labels: ['BE', 'bug'],
    milestone: '테스크01',
    author: '코어',
  },
  {
    id: 3,
    title: '살려주세요',
    createDate: '2023-05-10 14:35:10',
    labels: [],
    milestone: '',
    author: 'ManJu',
  },
];

const MainPage = () => {
  const [issueState, setIssueState] = useState(true);

  const changeIssueStateHandler = () => {
    setIssueState((prevIssueState) => !prevIssueState);
  };

  return (
    <PageLayout>
      <FilterBar />
      <IssueTable
        issueState={issueState}
        issues={issues}
        onChangeIssueState={changeIssueStateHandler}
      ></IssueTable>
    </PageLayout>
  );
};

export default MainPage;
