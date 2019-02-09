module GithubClient
  class GetRepositoriesRequest

    include APIClientBase::Request.module
    attribute :access_token, String
    attribute :visibility, String, default: "all"

    private

    def path
      "/user/repos"
    end

    def headers
      {
        "Authorization" => "token #{access_token}"
      }
    end

    def params
      { visibility: visibility }
    end

    def default_action
      :get
    end

  end
end
