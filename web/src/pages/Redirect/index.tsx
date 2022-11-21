import React, { useEffect } from 'react';
import { useLocation } from 'react-router-dom';

import '../../styles/global.css'
import './styles.css'

export default function Redirect() {
  const location = useLocation();

  return (
    <div className='main-container'>

      <main className='container'>
        <h1>
          Captura Completa
        </h1>

        <button
              type="button"
              onClick={() => {
                const image = location.state.base64.replaceAll(':', '_')
                const url = `webview-tests://method=${location.state.method}&base64=${image}`;
                window.location.href = url;    
              }}
            >
              Continuar
        </button>

      </main>
    </div>
  );
}
