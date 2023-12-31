import { useState } from "react";
import "./App.css";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import LoginAuthView from "../src/components/loginAuthView";
import HomeView from "./components/home-view";
import ObsIndexForm from "../src/components/form1";
import GenerateExcelSheet from "../src/components/generate-report-view";
import GenerateStatus from "../src/components/generate-status-view";
import { AuthProvider } from "../src/components/auth";
import HomePage from "../src/components/HomePage";
import ProtectedRoute from "../src/components/requiredAuth";
import "react-datetime/css/react-datetime.css";
import "react-date-range/dist/styles.css"; // main css file for date-range
import "react-date-range/dist/theme/default.css"; // theme css file date-range
function App() {
	const [count, setCount] = useState("");

	return (
		<AuthProvider>
			<div className='relative flex min-h-screen flex-col justify-center overflow-hidden bg-gray-50 py-6 sm:py-12'>
			<img src="../src/assets/beams.jpg" alt="" class="absolute top-1/2 left-1/2 max-w-none -translate-x-1/2 -translate-y-1/2" width="1308" />
			<div class="absolute inset-0 bg-[url('https://play.tailwindcss.com/img/grid.svg')] bg-center [mask-image:linear-gradient(180deg,white,rgba(255,255,255,0))]"></div>
				<div className='relative'>
					<Router>
						<Routes>
							<Route exact path='/' element={<HomePage />} />
							<Route exact path='/login' element={<LoginAuthView />} />
							<Route
								exact
								path='/home-view'
								element={
									<ProtectedRoute>
										<HomeView />
									</ProtectedRoute>
								}
							/>
							<Route
								exact
								path='/forms'
								element={
									<ProtectedRoute>
										<ObsIndexForm />
									</ProtectedRoute>
								}
							/>
							<Route
								exact
								path='/generate-excel-sheet'
								element={
									<ProtectedRoute>
										<GenerateExcelSheet />
									</ProtectedRoute>
								}
							/>
							<Route
								exact
								path='/generate-status'
								element={<GenerateStatus />}
							/>
						</Routes>
					</Router>
				</div>
			</div>
		</AuthProvider>
	);
}

export default App;
