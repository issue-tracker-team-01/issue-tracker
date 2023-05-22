import React from 'react';
import styled from 'styled-components';
import IssueTableListItem from './listItems/IssueTableListItem';
const IssueTableListBox = styled.ul`
  display: flex;
  flex-direction: column;
  > li:not(:last-child) {
    border-bottom: 1px solid ${({ theme }) => theme.COLOR.GRAY300};
  }
  > li:last-child {
    border-radius: 0px 0px 16px 16px;
  }
`;

const IssueTableList = ({ issuePageData: { issues } }) => {
  return (
    <IssueTableListBox>
      {issues.map((issue) => (
        <IssueTableListItem key={issue.id} issue={issue}></IssueTableListItem>
      ))}
    </IssueTableListBox>
  );
};

export default IssueTableList;
