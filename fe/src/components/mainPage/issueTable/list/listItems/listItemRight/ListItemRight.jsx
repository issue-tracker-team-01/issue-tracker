import React from 'react';
import styled from 'styled-components';
import UserIcon from './UserIcon';

const ListItemRightBox = styled.div`
  margin-right: 10px;
`;

const ListItemRight = () => {
  return (
    <ListItemRightBox>
      <UserIcon />
    </ListItemRightBox>
  );
};

export default ListItemRight;
