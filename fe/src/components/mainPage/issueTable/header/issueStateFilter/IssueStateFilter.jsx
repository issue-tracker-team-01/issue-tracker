import React from 'react';
import styled from 'styled-components';
import Checkbox from '../../../../../common/Checkbox';
import IssueStateButton from './IssueStateButton';
import OpenIssueStatusIcon from '../../../../../assets/icons/OpenIssueStatusIcon.svg';
import CloseIssueStatusIcon from '../../../../../assets/icons/CloseIssueStatusIcon.svg';

const IssueStateFilterBox = styled.div`
  display: flex;
  width: 300px;
  padding: 10px;
`;

const IssueStateButtonBox = styled.div`
  display: flex;
  justify-content: space-between;
  gap: 20px;
  margin-left: 20px;
`;

const IssueStateFilter = ({
  issueState,
  onChangeIssueState,
  issuePageData: { openedIssueCount, closedIssueCount, issues },
}) => {
  const openButtonHandler = () => {
    if (issueState) return;
    onChangeIssueState(false);
  };

  const closeButtonHandler = () => {
    if (!issueState) return;
    onChangeIssueState(true);
  };

  return (
    <IssueStateFilterBox>
      <Checkbox />
      <IssueStateButtonBox>
        <IssueStateButton
          imgSrc={OpenIssueStatusIcon}
          imgAlt={OpenIssueStatusIcon}
          buttonName="열린이슈"
          issuesCount={issueState ? issues.length : openedIssueCount}
          issueState={issueState}
          onClick={openButtonHandler}
        />
        <IssueStateButton
          imgSrc={CloseIssueStatusIcon}
          imgAlt={CloseIssueStatusIcon}
          buttonName="닫힌이슈"
          issuesCount={issueState ? closedIssueCount : issues.length}
          issueState={!issueState}
          onClick={closeButtonHandler}
        />
      </IssueStateButtonBox>
    </IssueStateFilterBox>
  );
};

export default IssueStateFilter;
