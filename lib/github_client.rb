require "github_client/version"
require "api_client_base"
require "github_client/client"
require "github_client/requests/get_user_repositories_request"
require "github_client/requests/get_org_repositories_request"
require "github_client/responses/get_user_repositories_response"
require "github_client/responses/get_org_repositories_response"

module GithubClient
  include APIClientBase::Base.module

  with_configuration do
    has :host, classes: String
    has :access_token, classes: String
  end
end
