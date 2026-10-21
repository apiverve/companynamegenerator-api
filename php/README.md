# Company Name Generator API - PHP Package

Company Name Generator generates business name ideas from a seed keyword, returning a list of suggested brand names. Supply any industry or concept word to receive ready-made brand naming suggestions.

## Installation

Install via Composer:

```bash
composer require apiverve/companynamegenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Companynamegenerator\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'keyword' => 'systems',
    'count' => 5
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Companynamegenerator\Client;
use APIVerve\Companynamegenerator\Exceptions\APIException;
use APIVerve\Companynamegenerator\Exceptions\ValidationException;

try {
    $response = $client->execute(['keyword' => 'systems', 'count' => 5]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/companynamegenerator?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/companynamegenerator?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/companynamegenerator?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
