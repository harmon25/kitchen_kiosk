import React, { Component } from "react";
import { List } from "material-ui/List";

import InventoryItem from "./InventoryItem";

const Inventory = () =>
  <List>
    <InventoryItem name="Canuk" brand="great lakes" />
  </List>;

export default Inventory;
