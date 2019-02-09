module GithubClient
  class GetRepositoriesForUserRequest

    include APIClientBase::Request.module
    attribute :access_token, String
    attribute :username, String

    private

    def path
      "/users/#{username}/repos"
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
