import React from 'react';
import {useNavigate} from 'react-router-dom';
import { useAuth } from './auth';


function HomeView() {
    const navigate = useNavigate();
    const auth = useAuth();
    const logout = () => {
        auth.logout();
       navigate('/login');
    }
    const goToFormPage = () => {
       navigate('/forms');
    }
    const generateSheetPage = () => {
       navigate('/generate-excel-sheet');
    }
    const generateStatus = () => {
       navigate('/generate-status');
    }
  return (
    <><div className="flex flex-col items-center justify-center h-screen">
            {
        auth.user === 'consultant' ? (
            <div className="bg-white p-6 rounded-lg shadow-md w-full sm:w-96">
            <h1 className="text-3xl font-bold mb-4">Welcome Consultant</h1>
               <div className="flex flex-col justify-center">
                   <button className="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded m-2" onClick={()=>goToFormPage()}>GO TO HOME PAGE</button>
                   <button className="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded m-2" onClick={() => generateSheetPage()}>GENERATE EXCEL SHEET REPORT</button>
                   <button className="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded m-2" onClick={() => generateStatus()}>GENERATE STATUS</button>
                   <button className="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded m-2" onClick={()=>logout()}>LOGOUT</button>
               </div>
             </div>
        ) : (
            <div className="bg-white p-6 rounded-lg shadow-md w-full sm:w-96">
            <h1 className="text-3xl font-bold mb-4">Welcome Doctor</h1>
               <div className="flex flex-col justify-center">
                   <button className="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded m-2" onClick={()=>goToFormPage()}>ENTER DATA</button>
                   <button className="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded m-2" onClick={() => generateSheetPage()}>GENERATE EXCEL SHEET REPORT</button>
                   <button className="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded m-2" onClick={()=>logout()}>LOGOUT</button>
               </div>
             </div>
        )}
        
      </div></>
  );
}

export default HomeView;
