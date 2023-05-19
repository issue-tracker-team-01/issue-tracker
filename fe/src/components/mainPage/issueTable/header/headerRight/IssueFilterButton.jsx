import React from 'react';
import styled from 'styled-components';

const IssueFilterButtonBlock = styled.button`
  display: flex;
  align-items: center;
  gap: 5px;
  background-color: ${({ theme }) => theme.COLOR.GRAY100};
`;

const IssueFilterButton = ({ imgSrc, imgAlt, buttonName }) => {
  return (
    <IssueFilterButtonBlock>
      {buttonName}
      <img src={imgSrc} alt={imgAlt} />
    </IssueFilterButtonBlock>
  );
};

export default IssueFilterButton;
