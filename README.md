# GithubClient

Ruby wrapper for GitHub API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'github_client-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install github_client-ruby

## Usage

### Initialize the Client

```ruby
client = GithubClient.new(
  host: "https://api.github.com",
  access_token: "access token",
)
```

### Or, apply it globally

```ruby
GithubClient.configure do |config|
  config.host = "https://api.github.com"
  config.access_token = "your access token"
end
```

### Fetch your repositories

See `spec/acceptance` for usage.

### Fetch a specific user's repositories

See [docs](https://developer.github.com/v3/repos/#list-user-repositories).

```ruby
client.repositories_for(
  user: "username",
)
```

### Fetch an organization's repositories

See [docs](https://developer.github.com/v3/repos/#list-organization-repositories).

```ruby
client.get_org_repositories(
  org: "name of org",
)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/github_client-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the GithubClient::Ruby project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/github_client-ruby/blob/master/CODE_OF_CONDUCT.md).
