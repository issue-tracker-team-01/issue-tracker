import styled, { css } from 'styled-components';

const DropdownBodyBlock = styled.li`
  display: flex;
  align-items: center;
  justify-content: space-between;
  height: 45px;
  background-color: ${({ theme }) => theme.COLOR.GRAY50};
  padding: 8px 16px;
  border-bottom: 1px solid ${({ theme }) => theme.COLOR.GRAY300};
  color: ${({ theme }) => theme.COLOR.GRAY700};
  cursor: pointer;

  &:first-child {
    border-top-left-radius: 16px;
    border-top-right-radius: 16px;
  }

  &:last-child {
    border-bottom-left-radius: 16px;
    border-bottom-right-radius: 16px;
  }

  ${({ isOnlyChild }) =>
    isOnlyChild &&
    css`
      border-radius: 16px;
    `}

  & img {
    width: 20px;
    height: 20px;
  }
`;

const ContentBlock = styled.div`
  display: flex;
  align-items: center;
  gap: 8px;
`;

const LabelPaletteBlock = styled.div`
  width: 13px;
  height: 13px;
  border-radius: 50%;
  background-size: cover;
  background-color: ${({ bgColorCode }) => bgColorCode};
`;

export { DropdownBodyBlock, LabelPaletteBlock, ContentBlock };
