import React, { Component } from "react";
import { Socket } from "phoenix";
import MuiThemeProvider from "material-ui/styles/MuiThemeProvider";
import AppBar from "material-ui/AppBar";
import injectTapEventPlugin from 'react-tap-event-plugin';

import {
  BottomNavigation,
  BottomNavigationItem
} from "material-ui/BottomNavigation";
import FontIcon from "material-ui/FontIcon";
import IconLocationOn from "material-ui/svg-icons/communication/location-on";

import logo from "./logo.svg";
import "./App.css";

const recentsIcon = <FontIcon className="material-icons">restaurant</FontIcon>;
const favoritesIcon = <FontIcon className="material-icons">favorite</FontIcon>;
const listIcon = <FontIcon className="material-icons">menu</FontIcon>;
const nearbyIcon = <IconLocationOn />;

injectTapEventPlugin();

/**
 *  * let socket = new Socket("/socket")
socket.connect()

let channel = socket.channel("data:shopping_list", {})
channel.join()
  .receive("ok", resp => { console.log("Joined successfully", resp) })
  .receive("error", resp => { console.log("Unable to join", resp) })
 * 
 */

const App = () =>
  <div>
    <AppBar
      title="KitchenKiosk"
      iconClassNameRight="muidocs-icon-navigation-expand-more"
    />

    <BottomNavigation selectedIndex={0}>
           <BottomNavigationItem label="Inventory" icon={recentsIcon} />  
      <BottomNavigationItem label="Shopping List" icon={listIcon} />
 
      <BottomNavigationItem label="Favourites" icon={favoritesIcon} />
    </BottomNavigation>
  </div>;

class AppContainer extends Component {
  render() {
    return (
      <MuiThemeProvider>
        <App />
      </MuiThemeProvider>
    );
  }
}

export default AppContainer;
