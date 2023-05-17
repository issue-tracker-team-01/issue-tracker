import React from 'react';
import styled from 'styled-components';
import FilterBar from '../components/filterBar/FilterBar';
import IssueTable from '../components/mainPage/issueTable/IssueTable';

const PageLayout = styled.main`
  display: flex;
  flex-direction: column;
`;

const MainPage = () => {
  return (
    <PageLayout>
      <FilterBar />
      <IssueTable></IssueTable>
    </PageLayout>
  );
};

export default MainPage;
