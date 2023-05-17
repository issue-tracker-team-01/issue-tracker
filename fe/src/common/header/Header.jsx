import styled from 'styled-components';
import logo from '../../assets/images/logo.svg';
import userImageLarge from '../../assets/images/userImageLarge.svg';

const HeaderContainer = styled.div`
  display: flex;
  justify-content: space-between;
`;

const UserImage = styled.img`
  width: 32px;
  height: 32px;
`;

const Header = () => {
  return (
    <HeaderContainer>
      <img src={logo} />
      <UserImage src={userImageLarge} />
    </HeaderContainer>
  );
};

export default Header;
