import React from 'react';
import styled from 'styled-components';
import UserImage from '../../../../../../assets/userImage/UserImage.svg';

const UserIconBlock = styled.div`
  width: 20px;
  height: 20px;
  background-image: url(${UserImage});
`;
const UserIcon = () => {
  return <UserIconBlock />;
};

export default UserIcon;
