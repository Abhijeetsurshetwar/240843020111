import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
import reportWebVitals from './reportWebVitals';
import '../node_modules/bootstrap/dist/css/bootstrap.min.css';
import'../node_modules/bootstrap/dist/js/bootstrap.bundle';
import { Provider } from 'react-redux';
import Store from './components/Redux/Store';
import { BrowserRouter } from 'react-router-dom';


const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <Provider store={Store}>
        <App />
    </Provider>
  </React.StrictMode>
);

 
reportWebVitals();
