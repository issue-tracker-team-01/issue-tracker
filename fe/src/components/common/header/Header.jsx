import Logo from '@assets/images/Logo.svg';
import UserImageLarge from '@assets/images/UserImageLarge.svg';
import { HeaderContainer, UserImage } from './HeaderStyled';

const Header = () => {
  return (
    <HeaderContainer>
      <img src={Logo} />
      <UserImage src={UserImageLarge} />
    </HeaderContainer>
  );
};

export default Header;
