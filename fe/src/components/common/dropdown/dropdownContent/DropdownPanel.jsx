import styled from 'styled-components';

const DropdownPanelBlock = styled.div`
  position: absolute;
  top: 30px;
  right: -10px;
  display: flex;
  width: 240px;
  height: auto;
  border: 1px solid ${({ theme }) => theme.COLOR.GRAY300};
  border-radius: 16px;

  > ul > li > img {
    width: 40px;
    height: 40px;
  }
`;

const DropdownPanel = ({ content: { assignees } }) => {
  return (
    <DropdownPanelBlock>
      <div>담당자필터</div>
      <ul>
        {assignees?.map(({ id, name, imgUrl }) => (
          <li key={id}>
            <img src={imgUrl} alt="이미지임" />
            <span>{name}</span>
          </li>
        ))}
      </ul>
    </DropdownPanelBlock>
  );
};

export default DropdownPanel;
