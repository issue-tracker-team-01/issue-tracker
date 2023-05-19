import React from 'react';
import styled from 'styled-components';
import IssueTableHeaderLeft from './headerLeft/IssueTableHeaderLeft';
import IssueTableHeaderRight from './headerRight/IssueTableHeaderRight';

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
      <IssueTableHeaderLeft
        issueState={issueState}
        issuePageData={issuePageData}
        onChangeIssueState={onChangeIssueState}
      />
      <IssueTableHeaderRight />
    </IssueTableHeaderContainer>
  );
};

export default IssueTableHeader;
