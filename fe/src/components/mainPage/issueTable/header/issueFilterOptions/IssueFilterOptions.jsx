import React from 'react';
import styled from 'styled-components';
import IssueFilterButton from './IssueFilterButton';

const IssueFilterOptionsBox = styled.div`
  display: flex;
  justify-content: space-between;
  width: 400px;
`;

const IssueFilterOptions = () => {
  const issueFilterButtons = [
    { buttonName: '담당자', id: 'assignees' },
    { buttonName: '레이블', id: 'labels' },
    { buttonName: '마일스톤', id: 'milestones' },
    { buttonName: '작성자', id: 'writers' },
  ];
  return (
    <IssueFilterOptionsBox>
      {issueFilterButtons.map((button) => (
        <IssueFilterButton key={button.id} buttonName={button.buttonName} />
      ))}
    </IssueFilterOptionsBox>
  );
};

export default IssueFilterOptions;
