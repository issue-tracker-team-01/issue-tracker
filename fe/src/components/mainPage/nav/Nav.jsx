import FilterBar from './filterBar/FilterBar';
import styled from 'styled-components';
import Button from '../../../common/button/Button';
import PlusIcon from '../../../assets/icons/PlusIcon.svg';
import Tab from '../../../common/tabs/Tabs';

const NavContainer = styled.div`
  display: flex;
  justify-content: space-between;
  margin-top: 29px;
  margin-bottom: 24px;
`;

const Nav = () => {
  return (
    <NavContainer>
      <FilterBar />
      <Tab></Tab>
      <Button type="container" size="medium">
        <img src={PlusIcon} />
        이슈 작성
      </Button>
    </NavContainer>
  );
};

export default Nav;
