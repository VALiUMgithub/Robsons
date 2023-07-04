import React, { useState } from "react";
import { useNavigate } from "react-router-dom";

function HomePage() {
	const navigate = useNavigate();

	const handleLoginClick = () => navigate("/login");
	const handleRegisterClick = () => navigate("/register");

	return (
		<div className='flex justify-center items-center h-screen'>
			<div>
				<h2 className='text-white'>HomePage</h2>
				<button className='p-8' onClick={handleRegisterClick}>Register</button>
				<button className='p-8' onClick={handleLoginClick}>
					Login
				</button>
			</div>
		</div>
	);
}

export default HomePage;
