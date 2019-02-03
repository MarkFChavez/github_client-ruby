RSpec.describe GithubClient do
  it "has a version number" do
    expect(GithubClient::VERSION).not_to be nil
  end

  it "allows setting of host" do
    client = described_class.new(host: "sample host")
    expect(client.host).to eq "sample host"
  end

  it "allows setting of access_token" do
    client = described_class.new(access_token: "sample access_token")
    expect(client.access_token).to eq "sample access_token"
  end
end
