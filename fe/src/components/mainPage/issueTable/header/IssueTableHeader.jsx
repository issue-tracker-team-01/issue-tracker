import React from 'react';
import styled from 'styled-components';
import IssueTableHeaderLeft from './headerLeft/IssueTableHeaderLeft';
import IssueTableHeaderRight from './headerRight/IssueTableHeaderRight';

const IssueTableHeaderContainer = styled.div`
  display: flex;
  flex-grow: 1;
  justify-content: space-between;
  height: auto;
  padding: 16px 30px;
  border-radius: 16px 16px 0px 0px;
  background-color: ${({ theme }) => theme.COLOR.GRAY100};
`;

const IssueTableHeader = () => {
  return (
    <IssueTableHeaderContainer>
      <IssueTableHeaderLeft />
      <IssueTableHeaderRight />
    </IssueTableHeaderContainer>
  );
};

export default IssueTableHeader;
