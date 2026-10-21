# Company Name Generator API - Ruby Gem

Company Name Generator generates business name ideas from a seed keyword, returning a list of suggested brand names. Supply any industry or concept word to receive ready-made brand naming suggestions.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_companynamegenerator'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_companynamegenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_companynamegenerator'

# Initialize the client
client = APIVerve::Companynamegenerator::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  keyword: "systems",
  count: 5
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ keyword: "systems", count: 5 })
  puts response["data"]
rescue APIVerve::Companynamegenerator::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Companynamegenerator::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Companynamegenerator::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "keyword": "systems",
    "count": "5",
    "names": [
      "SystemsVibe",
      "SystemsGrid",
      "SystemsDeck",
      "TrueSystems",
      "SystemsCape"
    ]
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/companynamegenerator?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/companynamegenerator?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/companynamegenerator?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
