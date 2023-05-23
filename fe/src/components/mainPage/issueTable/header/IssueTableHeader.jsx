import React from 'react';
import styled from 'styled-components';
import IssueStateFilter from './headerLeft/IssueStateFilter';
import IssueFilterOptions from './headerRight/IssueFilterOptions';

const IssueTableHeaderContainer = styled.div`
  display: flex;
  justify-content: space-between;
  height: auto;
  padding: 16px 30px;
  border-radius: 16px 16px 0px 0px;
  border-bottom: 1px solid ${({ theme }) => theme.COLOR.GRAY300};
  background-color: ${({ theme }) => theme.COLOR.GRAY100};
`;

const IssueTableHeader = ({ issueState, issuePageData, onChangeIssueState }) => {
  return (
    <IssueTableHeaderContainer>
      <IssueStateFilter
        issueState={issueState}
        issuePageData={issuePageData}
        onChangeIssueState={onChangeIssueState}
      />
      <IssueFilterOptions />
    </IssueTableHeaderContainer>
  );
};

export default IssueTableHeader;
