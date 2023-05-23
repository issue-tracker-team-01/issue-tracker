import React from 'react';
import styled from 'styled-components';
import OpenIssueStatusIcon from '../../../../../../../../assets/icons/OpenIssueStatusIcon.svg';
import IssueTitle from './IssueTitle';
import Label from './Label';

const LeftContentTopBox = styled.div`
  display: flex;
  align-items: center;
  gap: 10px;
  & img {
    width: 16px;
    height: 16px;
  }
`;

const LeftContentTop = ({ issue: { title, labels } }) => {
  return (
    <LeftContentTopBox>
      <img src={OpenIssueStatusIcon} />
      <IssueTitle>{title}</IssueTitle>
      {labels.length > 0 && labels.map((label) => <Label key={label} labelName={label}></Label>)}
    </LeftContentTopBox>
  );
};
export default LeftContentTop;
