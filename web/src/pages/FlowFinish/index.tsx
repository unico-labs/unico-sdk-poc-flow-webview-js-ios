import React from 'react';
import { useLocation, Location } from 'react-router-dom';

import '../../styles/global.css'
import './styles.css'

type RouteLocation = Location & {
  state: {
    base64: string;
    method: string
  }
}

export default function FlowFinish() {
  const location = useLocation() as RouteLocation;

  return (
    <div className='main-container'>

      <main className='container'>
        <h1>
          Captura Completa
        </h1>

        <button
          type="button"
          onClick={() => {
            const image = location.state.base64.replaceAll(':', '_');
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
