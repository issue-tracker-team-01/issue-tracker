import React from 'react';
import styled from 'styled-components';
import IssueInfo from './IssueInfo';
import MilestoneIcon from '../../../../../../../../assets/icons/MilestoneIcon.svg';

const LeftContentBottomContainer = styled.div`
  display: flex;
  gap: 12px;
`;

const LeftContentBottom = ({ issue: { id, createdDateTime, milestone, author } }) => {
  return (
    <LeftContentBottomContainer>
      <IssueInfo>#{id}</IssueInfo>
      <IssueInfo>
        이 이슈가 {createdDateTime}분 전, {author}님에 의해 작성되었습니다
      </IssueInfo>
      {milestone && (
        <IssueInfo>
          <img src={MilestoneIcon} />
          {milestone}
        </IssueInfo>
      )}
    </LeftContentBottomContainer>
  );
};

export default LeftContentBottom;
