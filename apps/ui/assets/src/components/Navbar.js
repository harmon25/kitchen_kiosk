import React, { Component } from "react";
import { Tabs, Tab } from "material-ui/Tabs";
import AppBar from "material-ui/AppBar";
import FontIcon from "material-ui/FontIcon";
import { NavLink, Link } from "react-router-dom"; // react-router v4

const inventoryIcon = (
  <FontIcon className="material-icons">restaurant</FontIcon>
);
const favoritesIcon = <FontIcon className="material-icons">favorite</FontIcon>;
const listIcon = <FontIcon className="material-icons">menu</FontIcon>;

const Navbar = () =>
  <div>
    <AppBar
      title="KitchenKiosk"
      iconClassNameRight="muidocs-icon-navigation-expand-more"
    />
    <Tabs style={{ marginBottom: 10 }}>
      <Tab as={NavLink} to="/" icon={inventoryIcon} label="Inventory" />
      <Link to="/shopping-list">
        <Tab
          as={NavLink}
          to="/shopping-list"
          icon={listIcon}
          label={"Shopping List"}
        />
      </Link>
      <Tab icon={favoritesIcon} label="Favourites" />
    </Tabs>
  </div>;

export default Navbar;
