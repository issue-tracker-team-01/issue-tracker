import { Route, Routes } from 'react-router-dom';
import Header from './common/header/Header';
import MainPage from './pages/MainPage';
import NewIssuePage from './pages/NewIssuePage';

const App = () => {
  return (
    <div>
      <Header />
      <Routes>
        <Route path="/" element={<MainPage />} />
        <Route path="/newIssue" element={<NewIssuePage />} />
      </Routes>
    </div>
  );
};

export default App;
