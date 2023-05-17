import React from 'react';
import styled from 'styled-components';
import IssueTable from '../components/mainPage/issueTable/IssueTable';

const PageLayout = styled.main`
  display: flex;
  flex-direction: column;
`;

const MainPage = () => {
  return (
    <PageLayout>
      <IssueTable></IssueTable>
    </PageLayout>
  );
};

export default MainPage;
