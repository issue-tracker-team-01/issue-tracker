import { react, useState, useEffect } from 'react';
import { InputBox } from './style';

const InputText = ({ title, setTitle }) => {
  const [isEdit, setEdit] = useState(false); // input 박스 클릭시 컴포넌트 스타일 변경

  useEffect(() => {
    const handleOutsideClick = (e) => {
      if (e.target.id !== 'titleInput') {
        setEdit(false);
      }
    };

    if (isEdit) {
      window.addEventListener('mousedown', handleOutsideClick);
    }

    return () => {
      window.removeEventListener('mousedown', handleOutsideClick);
    };
  }, [isEdit]);

  const handleClick = () => {
    setEdit(true);
  };

  const handleInputChange = (e) => {
    setTitle(e.target.value);
  };

  return (
    <InputBox editState={isEdit}>
      <label htmlFor="titleInput">제목</label>
      <input
        type="text"
        id="titleInput"
        onClick={handleClick}
        value={title}
        onChange={handleInputChange}
      />
    </InputBox>
  );
};

export default InputText;
