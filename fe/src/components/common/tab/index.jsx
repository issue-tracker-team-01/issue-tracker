import Button from '@common/button/index';
import TabContainer from './style';

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
