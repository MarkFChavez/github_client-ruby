require "spec_helper"

RSpec.describe "#get_repositories" do

  let(:client) do
    GithubClient.new(
      host: CONFIG[:host],
      access_token: CONFIG[:access_token],
    )
  end

  describe "#body" do
    context "without any arguments" do
      it "gets all repositories", vcr: {record: :once} do
        response = client.get_repositories()
        expect(response).to be_success
        expect(response.body).to be_an Array
      end
    end

    context "with `visibility` argument" do
      it "gets repositories based on visibility", vcr: {record: :once} do
        response = client.get_repositories(visibility: :private)
        expect(response).to be_success
        expect(response.body).to be_an Array
        repos = response.body
        values = repos.map { |repo| repo["private"] }.uniq
        expect(values).to eq [true]
      end
    end
  end

end
