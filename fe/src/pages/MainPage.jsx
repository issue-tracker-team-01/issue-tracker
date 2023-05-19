import React from 'react';
import styled from 'styled-components';
import IssueTable from '../components/mainPage/issueTable/IssueTable';
import Nav from '../components/mainPage/nav/Nav';

const PageLayout = styled.main`
  display: flex;
  flex-direction: column;
`;

const MainPage = () => {
  return (
    <PageLayout>
      <Nav />
      <IssueTable></IssueTable>
    </PageLayout>
  );
};

export default MainPage;
