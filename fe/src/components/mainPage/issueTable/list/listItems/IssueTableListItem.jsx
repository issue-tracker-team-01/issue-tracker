import React from 'react';
import styled from 'styled-components';
import Checkbox from '../../../../../common/Checkbox';
import Label from './Label';
import UserImage from '../../../../../assets/userImage/UserImage.svg';
import OpenIssueStatusIcon from '../../../../../assets/icons/OpenIssueStatusIcon.svg';
import MilestoneIcon from '../../../../../assets/icons/MilestoneIcon.svg';

const IssueTableListItemBlock = styled.li`
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 26px 40px;
  background-color: ${({ theme }) => theme.COLOR.GRAY50};
  border-bottom: 1px solid ${({ theme }) => theme.COLOR.GRAY300};
`;

const IssueTableListItemRight = styled.div`
  margin-right: 10px;
`;

const IssueTableListItemLeft = styled.div`
  display: flex;
  justify-content: space-between;
  align-items: center;
  width: auto;
`;

const IssueTableListItemLeftContent = styled.div`
  display: flex;
  flex-direction: column;
  gap: 5px;
  margin-left: 20px;
`;

const ListItemLeftContentTop = styled.div`
  display: flex;
  align-items: center;
  gap: 10px;
  & img {
    width: 16px;
    height: 16px;
  }
`;

const ListItemLeftContentBottom = styled.div`
  display: flex;
  gap: 12px;
`;

const IssueTitle = styled.div`
  font-size: ${({ theme }) => theme.FONT_SIZE.L}px;
  font-weight: ${({ theme }) => theme.FONT_WEIGHT.BOLD};
  line-height: 32px;
`;

const IssueInfo = styled.div`
  display: flex;
  gap: 3px;
  color: ${({ theme }) => theme.COLOR.GRAY600};
  font-size: ${({ theme }) => theme.FONT_SIZE.M}px;
  font-weight: ${({ theme }) => theme.FONT_WEIGHT.REGULAR};
  line-height: 28px;
`;

const UserIcon = styled.div`
  width: 20px;
  height: 20px;
  background-image: url(${UserImage});
`;

const IssueTableListItem = ({ issue: { id, title, author } }) => {
  return (
    <IssueTableListItemBlock>
      <IssueTableListItemLeft>
        <Checkbox />
        <IssueTableListItemLeftContent>
          <ListItemLeftContentTop>
            <img src={OpenIssueStatusIcon} />
            <IssueTitle>{title}</IssueTitle>
            <Label>document</Label>
          </ListItemLeftContentTop>
          <ListItemLeftContentBottom>
            <IssueInfo>#{id}</IssueInfo>
            <IssueInfo>이 이슈가 8분 전, {author}님에 의해 작성되었습니다</IssueInfo>
            <IssueInfo>
              <img src={MilestoneIcon} />
              그룹프로젝트
            </IssueInfo>
          </ListItemLeftContentBottom>
        </IssueTableListItemLeftContent>
      </IssueTableListItemLeft>
      <IssueTableListItemRight>
        <UserIcon />
      </IssueTableListItemRight>
    </IssueTableListItemBlock>
  );
};

export default IssueTableListItem;
