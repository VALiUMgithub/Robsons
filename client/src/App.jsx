import { useState } from 'react';
import './App.css';
import {   BrowserRouter as Router,
  Routes,
  Route} from 'react-router-dom';
import LoginAuthView from '../src/components/loginAuthView';
import HomeView from './components/home-view';
import ObsIndexForm from '../src/components/form1';
import GenerateExcelSheet from '../src/components/generate-report-view';
import GenerateStatus from '../src/components/generate-status-view';
import {AuthProvider} from '../src/components/auth';
import ProtectedRoute from '../src/components/requiredAuth';
import 'react-datetime/css/react-datetime.css';
import 'react-date-range/dist/styles.css'; // main css file for date-range
import 'react-date-range/dist/theme/default.css'; // theme css file date-range
function App() {
  const [count, setCount] = useState("")

  
  return (
    <AuthProvider>
    <div className="App font-poppins bg-[#568b6e] p-2">
      <div className='container  w-[100vw]'>
      <Router>
        <Routes>
          <Route exact path="/login" element={<LoginAuthView/>} />
          <Route exact path="/home-view" element={<ProtectedRoute><HomeView/></ProtectedRoute>} />
          <Route exact path="/forms" element={<ProtectedRoute><ObsIndexForm/></ProtectedRoute>} />
          <Route exact path="/generate-excel-sheet" element={<ProtectedRoute><GenerateExcelSheet/></ProtectedRoute>} />
          <Route exact path="/generate-status" element={<GenerateStatus/>} />
        </Routes>
      </Router>
      </div>
    </div>
    </AuthProvider>
  )
}

export default App
