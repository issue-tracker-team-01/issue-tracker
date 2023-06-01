import React, { useState, useEffect, useRef } from 'react';
import DropdownButton from './dropdownContent/dropdownButton';
import DropdownPanel from './dropdownContent/dropdownPanel';
import DropdownContainer from './style';
import apiUrl from '@utils/api/api';
import styled from 'styled-components';

const Dropdown = ({ buttonId, title, filterState, filterClickHandler, dropdownStyle }) => {
  const [isOpen, setIsOpen] = useState(false);
  const [dropdownContent, setDropdownContent] = useState(null);
  const ref = useRef();

  const fetchDropdownContent = async (buttonId) => {
    const url = `${apiUrl}/${buttonId === 'milestones' ? buttonId + '?isOpen=true' : buttonId}`;
    const response = await fetch(url);
    const data = await response.json();
    return data;
  };

  useEffect(() => {
    const fetchData = async () => {
      const data = await fetchDropdownContent(buttonId);
      setDropdownContent(data);
    };

    if (isOpen) {
      fetchData();
    }
  }, [isOpen]);

  const handleClickOutside = (event) => {
    if (ref.current && !ref.current.contains(event.target)) {
      setIsOpen(false);
    }
  };

  useEffect(() => {
    document.addEventListener('mousedown', handleClickOutside);

    return () => {
      document.removeEventListener('mousedown', handleClickOutside);
    };
  }, []);

  const handleToggleDropdown = () => {
    setIsOpen((prevState) => !prevState);
  };

  return (
    <DropdownContainer ref={ref} dropdownStyle={dropdownStyle}>
      <DropdownButton
        onClick={handleToggleDropdown}
        buttonName={title}
        dropdownStyle={dropdownStyle}
      />
      {dropdownStyle === 'sidebar' && <StyledDiv>hi</StyledDiv>}
      {isOpen && dropdownContent && (
        <DropdownPanel
          buttonName={title}
          buttonId={buttonId}
          filterState={filterState}
          filterClickHandler={filterClickHandler}
          content={dropdownContent}
          dropdownStyle={dropdownStyle}
          onClick={handleToggleDropdown}
        />
      )}
    </DropdownContainer>
  );
};

const StyledDiv = styled.div`
  width: 30px;
  height: 30px;
`;

export default Dropdown;
