import React from 'react';
import styled from 'styled-components';

const PageLayoutContainer = styled.main`
  display: flex;
  flex-direction: column;
`;

const PageLayout = ({ children }) => {
  return <PageLayoutContainer>{children}</PageLayoutContainer>;
};

export default PageLayout;
