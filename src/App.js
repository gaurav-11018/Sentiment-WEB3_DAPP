import React, { useEffect, useState } from "react";
import "./App.css";
import { ConnectButton } from "web3uikit";
import logo from "./images/download.png";

const App = () => {
  return (
    <>
      <div className="Header">
        <div className="logo">
          <img src={logo} alt="logo" height="50px" />
          Sentiment
          <ConnectButton />
        </div>
      </div>
    </>
  );
};

export default App;
