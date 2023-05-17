import React from 'react';
import styled from 'styled-components';
import IssueTableHeader from './header/IssueTableHeader';

const IssueTableContainer = styled.div`
  border: 1px solid ${({ theme }) => theme.COLOR.GRAY300};
  border-radius: 16px;
`;

const IssueTable = () => {
  return (
    <IssueTableContainer>
      <IssueTableHeader></IssueTableHeader>
    </IssueTableContainer>
  );
};

export default IssueTable;
