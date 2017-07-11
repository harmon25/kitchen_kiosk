import React, { Component } from "react";
import MuiThemeProvider from "material-ui/styles/MuiThemeProvider";
import injectTapEventPlugin from "react-tap-event-plugin";
import { ApolloProvider } from "react-apollo";
import { BrowserRouter } from "react-router-dom";
import "./App.css";
import AppRouter from "./router";

import client from "./apollo";
injectTapEventPlugin();

class AppContainer extends Component {
  render() {
    return (
      <ApolloProvider client={client}>
        <MuiThemeProvider>
          <BrowserRouter>
            <AppRouter />
          </BrowserRouter>
        </MuiThemeProvider>
      </ApolloProvider>
    );
  }
}

export default AppContainer;
