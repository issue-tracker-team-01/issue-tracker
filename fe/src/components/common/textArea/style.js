import styled from 'styled-components';

export const StyledInputContainer = styled.div`
  display: flex;
  flex-direction: column;
  align-items: center;
  position: relative;
  width: 958px;
  height: 436px;
  background-color: ${({ theme }) => theme.COLOR.GRAY200};
  border-radius: 16px;

  textarea {
    padding: 10px;
    margin-top: 15px;
    border: 0;
    width: 900px;
    background-color: transparent;
    min-height: 340px;

    &:focus {
      outline: 0;
    }

    &:focus ~ label,
    &:valid ~ label {
      font-size: 0.75em;
      top: -5px;
      transition: all 0.2s ease;
    }
  }
`;

export const StyledLabel = styled.label`
  color: #999;
  padding: 1.3rem 30px 1rem 30px;
  position: absolute;
  top: 10px;
  left: 0;
  transition: all 0.25s ease;
  pointer-events: none;
`;

export const CountBox = styled.span`
  position: absolute;
  font-size: 12px;
  color: ${({ theme }) => theme.COLOR.GRAY600};
  bottom: 80px;
  right: 40px;
`;

export const UploadFileBox = styled.div`
  > input {
    visibility: hidden;
  }
`;
