import React from 'react';
import { Route, Routes } from 'react-router-dom';

import SDK from './pages/SDK';
import Home from './pages/Home';
import Redirect from './pages/Redirect';

function App() {
  return (
    <Routes>
      <Route path='/' element={<Home />} />
      <Route path='/sdk' element={<SDK />} />
      <Route path='/redirect' element={<Redirect />} />
    </Routes>
  )

}

export default App;
