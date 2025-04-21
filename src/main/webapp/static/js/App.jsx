const App = () => {
	const user = window.userData;
  return (
    <div>
<h2>{user.username} Hello from external React file! 🎉</h2>
      <p>Current time: {new Date().toLocaleTimeString()}</p>
    </div>
  );
};

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(<App />);

