module GithubClient
  class Client

    include APIClientBase::Client.module(default_opts: :default_opts)

    attribute :host, String
    attribute :access_token, String

    api_action :get_repositories
    api_action :get_org_repositories

    private

    def default_opts
      {
        host: host,
        access_token: access_token,
      }
    end

  end
end
