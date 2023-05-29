import StyledButton from './style';

const Button = ({ children, flexible, type, elementPattern, state, size, ...rest }) => {
  return (
    <StyledButton
      flexible={flexible}
      type={type}
      elementPattern={elementPattern}
      state={state}
      size={size}
      {...rest}
    >
      {children}
    </StyledButton>
  );
};

export default Button;
