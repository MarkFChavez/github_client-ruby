module GithubClient
  class GetOrgRepositoriesRequest

    include APIClientBase::Request.module

    attribute :access_token, String
    attribute :org, String

    private

    def path
      "/orgs/#{org}/repos"
    end

    def headers
      {
        "Authorization" => "token #{access_token}"
      }
    end

    def default_action
      :get
    end

  end
end
