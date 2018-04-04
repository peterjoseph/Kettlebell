import React from "react";
import { Route } from "react-router";
import { Redirect, BrowserRouter, Switch } from "react-router-dom";

import AuthenticateRoute from "./common/components/AuthenticateRoute";
import MissingPath from "./common/components/MissingPath";

class Router extends React.Component {
  render() {
    return (
      <BrowserRouter>
        <div>
          <Switch>
            <RedirectRoute
              exact
              path="/"
              user={null /* user */}
              role={null /* Account Type Array */}
              render={props => <Dashboard user={null /* user */} />}
            />
            <RedirectRoute user={null /* user */} component={MissingPath} />
          </Switch>
        </div>
      </BrowserRouter>
    );
  }
}

export default Router;
