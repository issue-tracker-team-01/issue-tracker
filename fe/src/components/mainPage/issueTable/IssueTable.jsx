import React from 'react';
import styled from 'styled-components';
import IssueTableHeader from './header/IssueTableHeader';
import IssueTableList from './list/IssueTableList';

const IssueTableContainer = styled.div`
  border: 1px solid ${({ theme }) => theme.COLOR.GRAY300};
  border-radius: 16px;
`;

const IssueTable = ({ issueState, issuePageData, onChangeIssueState }) => {
  return (
    <IssueTableContainer>
      <IssueTableHeader
        issueState={issueState}
        issuePageData={issuePageData}
        onChangeIssueState={onChangeIssueState}
      />
      <IssueTableList issuePageData={issuePageData} />
    </IssueTableContainer>
  );
};

export default IssueTable;
