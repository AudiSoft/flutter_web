# flutter_web

[![Copyright © AudiSoft Consulting][audisoft_badge]][audisoft_url]

[audisoft_badge]: https://img.shields.io/badge/Copyright%20%C2%A9%202021%20-AudiSoft-orange (Copyright © AudiSoft Consulting)
[audisoft_url]: https://www.audisoft.com/

Ubuntu-based Docker image with web-enabled Flutter.

The binary package can be found at [https://ghcr.io/audisoft/flutter_web][package_url].

[package_url]: https://ghcr.io/audisoft/flutter_web

The source project can be found at [https://github.com/AudiSoft/flutter_web][repository_url].

[repository_url]: https://github.com/AudiSoft/flutter_web

## Usage

To install from the command line:

```bash
#!/bin/bash
docker pull ghcr.io/audisoft/flutter_web:latest
```

To use the image in a GitHub Action:

```yaml
jobs:
  job_name:
    name: Job name
    runs-on: ubuntu-latest
    container:
      image:  ghcr.io/audisoft/flutter_web:latest
    steps:
      # Checkout the code base.
      - name: Checkout
        uses: actions/checkout@v2
      # Print Flutter (and Dart) version.
      - name: Print Flutter version
        run: flutter --version
```

To extend the image in a GitHub Action:

```yaml
jobs:
  job_name:
    name: Job name
    runs-on: ubuntu-latest
    steps:
      # Checkout context directory including Dockefile.
      - name: Prepare context
        uses: actions/checkout@v2
      # Download latest image.
      - name: Download image
        run: docker pull ghcr.io/audisoft/flutter_web:latest
      # Use image.
      - name: Build new image
        run: docker build . --cache-from ghcr.io/audisoft/flutter_web:latest
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/AudiSoft/flutter_web/issues
