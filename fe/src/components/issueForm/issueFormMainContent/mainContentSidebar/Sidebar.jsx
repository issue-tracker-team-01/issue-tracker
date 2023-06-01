import React, { useContext } from 'react';
import styled from 'styled-components';
import Dropdown from '@components/common/dropdown';
import { IssueFormInfoStateContext } from '..';

const SidebarContainer = styled.div`
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  width: 300px;
  height: auto;
  border: 1px solid ${({ theme }) => theme.COLOR.GRAY200};
  border-radius: 16px;
  background-color: ${({ theme }) => theme.COLOR.GRAY50};
`;

const Sidebar = () => {
  const { issueFormInfoState, dispatch } = useContext(IssueFormInfoStateContext);

  const sidebarDropdownButtons = [
    { buttonName: '담당자', buttonId: 'assignees' },
    { buttonName: '레이블', buttonId: 'labels' },
    { buttonName: '마일스톤', buttonId: 'milestones' },
  ];

  const filterClickHandler = (buttonId, id) => {
    dispatch({ type: 'SET_SIDEBAR_INFO', payload: { key: buttonId, value: id } });
  };

  const dropdownStyle = 'sidebar';
  /* todo : sidebar style 상태 관리 필요 */
  return (
    <SidebarContainer>
      {sidebarDropdownButtons.map((button) => (
        <Dropdown
          key={button.buttonId}
          buttonId={button.buttonId}
          title={button.buttonName}
          filterState={issueFormInfoState}
          filterClickHandler={filterClickHandler}
          dropdownStyle={dropdownStyle}
        />
      ))}
    </SidebarContainer>
  );
};

export default Sidebar;
