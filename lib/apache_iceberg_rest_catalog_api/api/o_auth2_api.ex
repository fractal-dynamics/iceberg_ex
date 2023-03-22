# NOTE: This file is auto generated by OpenAPI Generator 6.5.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ApacheIcebergRESTCatalogAPI.Api.OAuth2API do
  @moduledoc """
  API calls for all endpoints tagged `OAuth2API`.
  """

  alias ApacheIcebergRESTCatalogAPI.Connection
  import ApacheIcebergRESTCatalogAPI.RequestBuilder

  @doc """
  Get a token using an OAuth2 flow
  Exchange credentials for a token using the OAuth2 client credentials flow or token exchange.  This endpoint is used for three purposes - 1. To exchange client credentials (client ID and secret) for an access token This uses the client credentials flow. 2. To exchange a client token and an identity token for a more specific access token This uses the token exchange flow. 3. To exchange an access token for one with the same claims and a refreshed expiration period This uses the token exchange flow.  For example, a catalog client may be configured with client credentials from the OAuth2 Authorization flow. This client would exchange its client ID and secret for an access token using the client credentials request with this endpoint (1). Subsequent requests would then use that access token.  Some clients may also handle sessions that have additional user context. These clients would use the token exchange flow to exchange a user token (the \"subject\" token) from the session for a more specific access token for that user, using the catalog's access token as the \"actor\" token (2). The user ID token is the \"subject\" token and can be any token type allowed by the OAuth2 token exchange flow, including a unsecured JWT token with a sub claim. This request should use the catalog's bearer token in the \"Authorization\" header.  Clients may also use the token exchange flow to refresh a token that is about to expire by sending a token exchange request (3). The request's \"subject\" token should be the expiring token. This request should use the subject token in the \"Authorization\" header.

  ### Parameters

  - `connection` (ApacheIcebergRESTCatalogAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:grant_type` (String.t): 
    - `:scope` (String.t): 
    - `:client_id` (String.t): Client ID  This can be sent in the request body, but OAuth2 recommends sending it in a Basic Authorization header.
    - `:client_secret` (String.t): Client secret  This can be sent in the request body, but OAuth2 recommends sending it in a Basic Authorization header.
    - `:requested_token_type` (ApacheIcebergRESTCatalogAPI.Model.TokenType.t): 
    - `:subject_token` (String.t): Subject token for token exchange request
    - `:subject_token_type` (ApacheIcebergRESTCatalogAPI.Model.TokenType.t): 
    - `:actor_token` (String.t): Actor token for token exchange request
    - `:actor_token_type` (ApacheIcebergRESTCatalogAPI.Model.TokenType.t): 

  ### Returns

  - `{:ok, ApacheIcebergRESTCatalogAPI.Model.GetToken200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_token(Tesla.Env.client, keyword()) :: {:ok, ApacheIcebergRESTCatalogAPI.Model.GetToken400Response.t} | {:ok, ApacheIcebergRESTCatalogAPI.Model.GetToken200Response.t} | {:error, Tesla.Env.t}
  def get_token(connection, opts \\ []) do
    optional_params = %{
      :grant_type => :form,
      :scope => :form,
      :client_id => :form,
      :client_secret => :form,
      :requested_token_type => :form,
      :subject_token => :form,
      :subject_token_type => :form,
      :actor_token => :form,
      :actor_token_type => :form
    }

    request =
      %{}
      |> method(:post)
      |> url("/v1/oauth/tokens")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %ApacheIcebergRESTCatalogAPI.Model.GetToken200Response{}},
      {400, %ApacheIcebergRESTCatalogAPI.Model.GetToken400Response{}},
      {401, %ApacheIcebergRESTCatalogAPI.Model.GetToken400Response{}},
      {"5XX", %ApacheIcebergRESTCatalogAPI.Model.GetToken400Response{}}
    ])
  end
end
