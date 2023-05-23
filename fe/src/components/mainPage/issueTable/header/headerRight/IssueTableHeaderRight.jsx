import React from 'react';
import styled from 'styled-components';
import IssueFilterButton from './IssueFilterButton';

const IssueTableHeaderRightBox = styled.div`
  display: flex;
  justify-content: space-between;
  width: 400px;
`;

const IssueTableHeaderRight = () => {
  const issueFilterButtons = [
    { buttonName: '담당자', id: 'assignees' },
    { buttonName: '레이블', id: 'labels' },
    { buttonName: '마일스톤', id: 'milestones' },
    { buttonName: '작성자', id: 'writers' },
  ];
  return (
    <IssueTableHeaderRightBox>
      {issueFilterButtons.map((button) => (
        <IssueFilterButton key={button.id} buttonName={button.buttonName} />
      ))}
    </IssueTableHeaderRightBox>
  );
};

export default IssueTableHeaderRight;
