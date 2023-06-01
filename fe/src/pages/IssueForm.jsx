import React, { useReducer, createContext } from 'react';
import styled from 'styled-components';
import IssueFormMainContent from '@components/issueForm/issueFormMainContent';
import PageLayout from '@components/common/layout/PageLayout';
import Buttons from '@components/issueForm/issueFormButtons/Buttons';

export const IssueFormInfoStateContext = createContext();

const initialState = {
  writerId: 4, // 로그인 기능이 없어 작성자 id 고정
  title: '',
  description: '',
  fileUrl: '', // 파일 타입이 따로 있음
  assignees: null,
  labels: null,
  milestones: null,
};

const issueFormReducer = (state, action) => {
  const { type, payload } = action;
  switch (type) {
    case 'SET_TITLE':
      return {
        ...state,
        title: payload,
      };
    case 'SET_DESCRIPTION':
      return {
        ...state,
        description: payload,
      };
    case 'SET_SIDEBAR_INFO':
      return state[payload.key] === payload.value
        ? { ...state, [payload.key]: null }
        : { ...state, [payload.key]: payload.value };
    default:
      return state;
  }
};

// TODO : post 보내는 로직 작성 필요(poco)
// TODO : 상태를 post 보낼 json 형식으로 변경 필요

const IssueForm = () => {
  const [issueFormInfoState, dispatch] = useReducer(issueFormReducer, initialState);

  const convertInfoToJSON = (issueFormInfoState) => {
    // TODO : 상태를 post 보낼 json 형식으로 변경 필요
  };

  return (
    <PageLayout>
      <IssueFormInfoStateContext.Provider value={{ issueFormInfoState, dispatch }}>
        <IssueFormTitle>새로운 이슈 작성</IssueFormTitle>
        <DividingLine />
        <IssueFormMainContent />
        <DividingLine />
        <Buttons />
      </IssueFormInfoStateContext.Provider>
    </PageLayout>
  );
};

const IssueFormTitle = styled.div`
  font-size: ${({ theme }) => theme.FONT_SIZE.XXL}px;
  font-weight: ${({ theme }) => theme.FONT_WEIGHT.REGULAR};
  line-height: 48px;
`;

const DividingLine = styled.div`
  height: 1px;
  background-color: ${({ theme }) => theme.COLOR.GRAY300};
  margin-top: 24px;
`;

export default IssueForm;
