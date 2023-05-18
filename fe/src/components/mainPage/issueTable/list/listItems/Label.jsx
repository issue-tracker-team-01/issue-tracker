import React from 'react';
import styled from 'styled-components';

const LabelBox = styled.div`
  display: inline-block;
  width: auto;
  background-color: red;
  padding: 3px 18px;
  border-radius: 50px;
  color: ${({ theme }) => theme.COLOR.GRAY50};
  font-size: ${({ theme }) => theme.FONT_SIZE.S};
  font-weight: ${({ theme }) => theme.FONT_WEIGHT.REGULAR};
  ling-height: 20px;
`;

const Label = ({ children }) => {
  return <LabelBox>{children}</LabelBox>;
};

export default Label;
