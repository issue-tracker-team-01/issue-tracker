import Button from '../button/Button';
import TabContainer from './TabStyled';

const Tab = () => {
  return (
    <TabContainer>
      <Button type="ghost" size="medium">
        레이블(2)
      </Button>
      <Button type="ghost" size="medium">
        마일스톤(3)
      </Button>
    </TabContainer>
  );
};

export default Tab;
