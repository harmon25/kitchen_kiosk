import React, { Component } from "react";
import { ListItem } from "material-ui/List";
import Avatar from "material-ui/Avatar";
import FontIcon from "material-ui/FontIcon";

const ActionInfo = <FontIcon className="material-icons">action_info</FontIcon>;
const FileFolder = <FontIcon className="material-icons">file_folder</FontIcon>;

const InventoryItem = ({ name, brand }) =>
  <ListItem
    leftAvatar={<Avatar icon={FileFolder} />}
    rightIcon={ActionInfo}
    primaryText={name}
    secondaryText={brand || ""}
  />;

export default InventoryItem;
