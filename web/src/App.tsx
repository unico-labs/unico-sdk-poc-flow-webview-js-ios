import React from 'react';
import { Route, Routes } from 'react-router-dom';

import SDK from './pages/SDK';
import Home from './pages/Home';
import FlowFinish from './pages/FlowFinish';

function App() {
  return (
    <Routes>
      <Route path='/' element={<Home />} />
      <Route path='/sdk' element={<SDK />} />
      <Route path='/flow-finish' element={<FlowFinish />} />
    </Routes>
  )

}

export default App;
