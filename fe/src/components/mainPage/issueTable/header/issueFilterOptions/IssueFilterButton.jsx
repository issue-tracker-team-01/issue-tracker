import React from 'react';
import styled from 'styled-components';
import DropdownIcon from '../../../../../assets/icons/DropdownIcon.svg';

const IssueFilterButtonBlock = styled.button`
  display: flex;
  align-items: center;
  gap: 5px;
  background-color: ${({ theme }) => theme.COLOR.GRAY100};
`;

const IssueFilterButton = ({ buttonName }) => {
  return (
    <IssueFilterButtonBlock>
      {buttonName}
      <img src={DropdownIcon} alt={DropdownIcon} />
    </IssueFilterButtonBlock>
  );
};

export default IssueFilterButton;
