import React from 'react';
import styled from 'styled-components';
import Checkbox from '../../../../../common/Checkbox';
import IssueStatusButton from './IssueStatusButton';
import OpenIssueStatusIcon from '../../../../../assets/icons/OpenIssueStatusIcon.svg';
import CloseIssueStatusIcon from '../../../../../assets/icons/CloseIssueStatusIcon.svg';

const IssueTableHeaderLeftBox = styled.div`
  display: flex;
  width: 300px;
  padding: 10px;
`;

const IssueStatusButtonBox = styled.div`
  display: flex;
  justify-content: space-between;
  gap: 20px;
  margin-left: 20px;
`;

const IssueTableHeaderLeft = ({ issueState, issues, onChangeIssueState }) => {
  const openButtonHandler = () => {
    if (issueState) return;
    onChangeIssueState(false);
  };

  const closeButtonHandler = () => {
    if (!issueState) return;
    onChangeIssueState(true);
  };

  return (
    <IssueTableHeaderLeftBox>
      <Checkbox />
      <IssueStatusButtonBox>
        <IssueStatusButton
          imgSrc={OpenIssueStatusIcon}
          imgAlt={OpenIssueStatusIcon}
          buttonName="열린이슈"
          issueState={issueState}
          onClick={openButtonHandler}
        />
        <IssueStatusButton
          imgSrc={CloseIssueStatusIcon}
          imgAlt={CloseIssueStatusIcon}
          buttonName="닫힌이슈"
          issueState={!issueState}
          onClick={closeButtonHandler}
        />
      </IssueStatusButtonBox>
    </IssueTableHeaderLeftBox>
  );
};

export default IssueTableHeaderLeft;
