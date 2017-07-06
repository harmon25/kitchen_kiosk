defmodule Ui.Web.CORS do
 use Corsica.Router,
    origins: ["http://localhost"],
    allow_credentials: true,
    max_age: 600

    resource "/socket", origins: "*"
    resource "/api", origins: "*"
    #resource "/phoenix/live_reload/socket", origins: "*"


end