import React from 'react';
import styled from 'styled-components';
import IssueTableHeader from './header/IssueTableHeader';
import IssueTableList from './list/IssueTableList';

const IssueTableContainer = styled.div`
  border: 1px solid ${({ theme }) => theme.COLOR.GRAY300};
  border-radius: 16px;
`;

const IssueTable = ({ issueState, issues, onChangeIssueState }) => {
  return (
    <IssueTableContainer>
      <IssueTableHeader
        issueState={issueState}
        issues={issues}
        onChangeIssueState={onChangeIssueState}
      ></IssueTableHeader>
      <IssueTableList issueState={issueState} issues={issues}></IssueTableList>
    </IssueTableContainer>
  );
};

export default IssueTable;
