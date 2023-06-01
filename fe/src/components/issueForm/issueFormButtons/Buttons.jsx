import React, { useContext } from 'react';
import styled from 'styled-components';
import Button from '@common/button/index';
import CancelIcon from '@assets/icons/CancelIcon.svg';
import { IssueFormInfoStateContext } from '@pages/IssueForm';
import { Link } from 'react-router-dom';

const ButtonsBox = styled.div`
  display: flex;
  justify-content: flex-end;
  align-items: center;
  padding: 0px;
  gap: 32px;
  margin-top: 20px;
`;

// TODO : 작성취소 버튼 클릭시 router 동작 필요
// TODO : 메인상태에서 title 길이가 0이상이냐

const Buttons = () => {
  const {
    issueFormInfoState: { title },
  } = useContext(IssueFormInfoStateContext);

  const submitButtonState = title.length > 0 ? 'default' : 'disabled';

  return (
    <ButtonsBox>
      <Link to="/">
        <Button title="작성취소" icon={CancelIcon} type="ghost" size="medium" />
      </Link>
      <Button title="완료" type="container" size="large" state={submitButtonState} />
    </ButtonsBox>
  );
};

export default Buttons;
