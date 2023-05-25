import React from 'react';
import styled from 'styled-components';
import Dropdown from '../../../../common/dropdown/Dropdown';

const IssueFilterOptionsBox = styled.div`
  display: flex;
  justify-content: space-between;
  width: 400px;
  align-items: center;
`;

const IssueFilterOptions = () => {
  const fetchDropdownContent = async (buttonType) => {
    const response = await fetch(`/api/${buttonType}`);
    const data = await response.json();

    return data;
  };

  const issueDropdownButtons = [
    { buttonName: '담당자', id: 'assignees' },
    { buttonName: '레이블', id: 'labels' },
    { buttonName: '마일스톤', id: 'milestones' },
    { buttonName: '작성자', id: 'writers' },
  ];
  return (
    <IssueFilterOptionsBox>
      {issueDropdownButtons.map((button) => (
        <Dropdown
          key={button.id}
          title={button.buttonName}
          fetchDropdownContent={() => fetchDropdownContent(button.id)}
        />
      ))}
    </IssueFilterOptionsBox>
  );
};

export default IssueFilterOptions;
