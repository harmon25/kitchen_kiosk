import { ApolloClient, createNetworkInterface } from "react-apollo";

let gql_uri = "http://localhost:3000/api";
export default new ApolloClient({
  networkInterface: createNetworkInterface({
    uri: gql_uri
  })
});
