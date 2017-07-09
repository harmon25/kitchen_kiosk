import React, { Component } from "react";
import { Socket } from "phoenix";
import MuiThemeProvider from "material-ui/styles/MuiThemeProvider";
import AppBar from "material-ui/AppBar";
import injectTapEventPlugin from "react-tap-event-plugin";
import { List, ListItem } from "material-ui/List";
import Avatar from "material-ui/Avatar";
import Divider from "material-ui/Divider";
import Subheader from "material-ui/Subheader";
import { blue500, yellow600 } from "material-ui/styles/colors";
import ActionInfo from "material-ui/svg-icons/action/info";

import {
  BottomNavigation,
  BottomNavigationItem
} from "material-ui/BottomNavigation";
import FontIcon from "material-ui/FontIcon";
import IconLocationOn from "material-ui/svg-icons/communication/location-on";
import { Tabs, Tab } from "material-ui/Tabs";
import FileFolder from "material-ui/svg-icons/file/folder";
import ActionAssignment from "material-ui/svg-icons/action/assignment";
import EditorInsertChart from "material-ui/svg-icons/editor/insert-chart";

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
    <Tabs>
      <Tab icon={listIcon} label="Inventory" />
      <Tab icon={listIcon} label="Shopping List" />
      <Tab icon={favoritesIcon} label="Favourites" />
    </Tabs>
    <div style={{ margin: "auto", maxWidth: "900px" }}>
      <List>
        <Subheader inset={true}>Folders</Subheader>
        <ListItem
          leftAvatar={<Avatar icon={<FileFolder />} />}
          rightIcon={<ActionInfo />}
          primaryText="Photos"
          secondaryText="Jan 9, 2014"
        />
        <ListItem
          leftAvatar={<Avatar icon={<FileFolder />} />}
          rightIcon={<ActionInfo />}
          primaryText="Recipes"
          secondaryText="Jan 17, 2014"
        />
        <ListItem
          leftAvatar={<Avatar icon={<FileFolder />} />}
          rightIcon={<ActionInfo />}
          primaryText="Work"
          secondaryText="Jan 28, 2014"
        />
      </List>
      <Divider inset={true} />
      <List>
        <Subheader inset={true}>Files</Subheader>
        <ListItem
          leftAvatar={
            <Avatar icon={<ActionAssignment />} backgroundColor={blue500} />
          }
          rightIcon={<ActionInfo />}
          primaryText="Vacation itinerary"
          secondaryText="Jan 20, 2014"
        />
        <ListItem
          leftAvatar={
            <Avatar icon={<EditorInsertChart />} backgroundColor={yellow600} />
          }
          rightIcon={<ActionInfo />}
          primaryText="Kitchen remodel"
          secondaryText="Jan 10, 2014"
        />
      </List>
    </div>
    <div id="footer">
      <div style={{ textAlign: "right", maxWidth: "900px", margin: "auto" }}>
        <span>KitchenKiosk </span>
      </div>
    </div>
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
