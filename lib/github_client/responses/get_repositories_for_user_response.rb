module GithubClient
  class GetRepositoriesForUserResponse

    include APIClientBase::Response.module
    attribute :body, Array, lazy: true, default: :default_body

    private

    def default_body
      JSON.parse(raw_response.body).map(&:with_indifferent_access)
    end

  end
end
