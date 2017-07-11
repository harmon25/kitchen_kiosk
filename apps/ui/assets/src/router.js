import React, { Component } from "react";
import { Route, Switch } from "react-router-dom"; // react-router v4
import Paper from "material-ui/Paper";

import NavBar from "./components/Navbar";
import Inventory from "./components/Inventory";
import ShoppingList from "./components/ShoppingList";
import Favourites from "./components/Favourites";

const AppRouter = () =>
  <div>
    <NavBar />

    <Paper style={{ marginTop: 15, margin: "auto", maxWidth: "960px" }}>
      <Switch>
        <Route path="/" exact component={Inventory} />
        <Route path="/shopping-list" exact component={ShoppingList} />
        <Route path="/favourites" exact component={Favourites} />
      </Switch>
    </Paper>
  </div>;

export default AppRouter;
