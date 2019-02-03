require "spec_helper"

RSpec.describe "#get_org_repositories" do

  let(:client) do
    GithubClient.new(
      host: CONFIG[:host],
      access_token: CONFIG[:access_token],
    )
  end

  describe "#body" do
    it "returns all org repositories", vcr: {record: :once} do
      response = client.get_org_repositories(org: CONFIG[:org])
      expect(response).to be_success
      expect(response.body).to be_an Array
    end
  end

end
