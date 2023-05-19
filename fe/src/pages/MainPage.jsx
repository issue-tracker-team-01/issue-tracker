import React, { useState, useEffect } from 'react';
import styled from 'styled-components';
import IssueTable from '../components/mainPage/issueTable/IssueTable';
import Nav from '../components/mainPage/nav/Nav';

const PageLayout = styled.main`
  display: flex;
  flex-direction: column;
`;

const MainPage = () => {
  const [issueState, setIssueState] = useState(true);
  const [issuePageData, setIssuePageData] = useState(null);

  const fetchData = async () => {
    try {
      const url = issueState ? 'api/openedIssuePage' : 'api/closedIssuePage';
      const response = await fetch(url);
      const IssuePageData = await response.json();
      setIssuePageData(IssuePageData);
    } catch (error) {
      // eslint-disable-next-line no-console
      console.error('Error fetching data:', error);
    }
  };

  useEffect(() => {
    fetchData();
  }, [issueState]);

  const changeIssueStateHandler = () => {
    setIssueState((prevIssueState) => !prevIssueState);
  };

  return (
    <PageLayout>
      <Nav />
      {issuePageData && (
        <IssueTable
          issueState={issueState}
          issuePageData={issuePageData}
          onChangeIssueState={changeIssueStateHandler}
        />
      )}
    </PageLayout>
  );
};

export default MainPage;
