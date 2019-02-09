require "github_client/version"
require "api_client_base"
require "uri"
require "json"

module GithubClient
  include APIClientBase::Base

  with_configuration do
    has :host, classes: String
    has :access_token, classes: String
  end
end

require "github_client/client"
require "github_client/requests/get_repositories_request"
require "github_client/requests/get_org_repositories_request"
require "github_client/responses/get_repositories_response"
require "github_client/responses/get_org_repositories_response"
