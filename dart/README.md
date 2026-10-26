# Company Name Generator API - Dart/Flutter Client

Company Name Generator generates business name ideas from a seed keyword, returning a list of suggested brand names. Supply any industry or concept word to receive ready-made brand naming suggestions.

[![pub package](https://img.shields.io/pub/v/apiverve_companynamegenerator.svg)](https://pub.dev/packages/apiverve_companynamegenerator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Company Name Generator API](https://apiverve.com/marketplace/companynamegenerator?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_companynamegenerator: ^1.2.3
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_companynamegenerator/apiverve_companynamegenerator.dart';

void main() async {
  final client = CompanynamegeneratorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'keyword': 'systems',
      'count': 5
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Company Name Generator API](https://apiverve.com/marketplace/companynamegenerator?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/companynamegenerator](https://docs.apiverve.com/ref/companynamegenerator?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
