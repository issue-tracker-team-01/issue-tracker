import React from 'react';
import styled from 'styled-components';
import IssueTableListItem from './listItems/IssueTableListItem';
const IssueTableListBox = styled.ul`
  display: flex;
  flex-direction: column;
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
