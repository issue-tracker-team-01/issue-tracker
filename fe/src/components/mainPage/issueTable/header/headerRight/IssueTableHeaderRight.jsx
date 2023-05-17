import React from 'react';
import DropdownIcon from '../../../../../assets/icons/DropdownIcon.svg';
import styled from 'styled-components';
import IssueFilterButton from './IssueFilterButton';

const IssueTableHeaderRightBox = styled.div`
  display: flex;
  justify-content: space-between;
  width: 300px;
`;

const IssueTableHeaderRight = () => {
  return (
    <IssueTableHeaderRightBox>
      <IssueFilterButton imgSrc={DropdownIcon} alt={DropdownIcon} buttonName="담당자" />
      <IssueFilterButton imgSrc={DropdownIcon} alt={DropdownIcon} buttonName="레이블" />
      <IssueFilterButton imgSrc={DropdownIcon} alt={DropdownIcon} buttonName="마일스톤" />
      <IssueFilterButton imgSrc={DropdownIcon} alt={DropdownIcon} buttonName="작성자" />
    </IssueTableHeaderRightBox>
  );
};

export default IssueTableHeaderRight;
