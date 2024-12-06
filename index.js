import React from "react";
import ReactDOM from "react-dom/client"; // Note the updated import

function App() {
  return <h1>Hello, World!</h1>;
}

// Use createRoot instead of ReactDOM.render
const root = ReactDOM.createRoot(document.getElementById("root"));
root.render(<App />);


