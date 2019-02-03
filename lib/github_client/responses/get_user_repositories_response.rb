module GithubClient
  class GetUserRepositoriesResponse

    include APIClientBase::Response.module

    attribute :body, Array, lazy: true, default: :default_body

    private

    def default_body
      JSON.parse(raw_response.body)
    end

  end
end
