require "spec_helper"

RSpec.describe "#get_repositories_for_user" do

  let(:client) do
    GithubClient.new(
      host: CONFIG[:host],
      access_token: CONFIG[:access_token],
    )
  end

  let(:username) { "MarkFChavez" }

  describe "#body" do
    context "without any arguments" do
      it "gets all public repositories for user", vcr: {record: :once} do
        response = client.get_repositories_for_user(username: username)
        expect(response).to be_success
        expect(response.body).to be_an Array
      end
    end
  end

end
