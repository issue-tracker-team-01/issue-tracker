import React from 'react';
import styled from 'styled-components';

const IssueStatusButtonBlock = styled.button`
  display: flex;
  align-items: center;
  gap: 8px;
  background-color: ${({ theme }) => theme.COLOR.GRAY100};
  font-size: ${({ theme }) => theme.SIZE.M}px;
`;

const IssueStatusButton = ({ imgSrc, imgAlt, buttonName }) => {
  return (
    <IssueStatusButtonBlock>
      <img src={imgSrc} alt={imgAlt} />
      {buttonName}
    </IssueStatusButtonBlock>
  );
};

export default IssueStatusButton;
