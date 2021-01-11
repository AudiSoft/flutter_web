# flutter_web_docker

[![Copyright © AudiSoft Consulting][audisoft_badge]][audisoft_url]

[audisoft_badge]: https://img.shields.io/badge/Copyright%20%C2%A9%202021%20-AudiSoft-orange (Copyright © AudiSoft Consulting)
[audisoft_url]: https://www.audisoft.com/

Ubuntu-based Docker image with web-enabled Flutter.

## Usage

This package can be located at [https://ghcr.io/audisoft/flutter][package_url].

[package_url]: https://ghcr.io/audisoft/flutter

In a GitHub Action Script:

```yaml
jobs:
  job_name:
    name: Job name
    runs-on: ubuntu-latest
    steps:
      # Checkout context directory including Dockefile.
      - name: Prepare context
        uses: actions/checkout@v2
      # Get image (requires registering a Personal Access Token PAT as a secret in the repository).
      - name: Login to GitHub Container Regitry
        run: echo ${{ secrets.CONTAINER_REGISTRY_TOKEN }} | docker login ghcr.io -u $GITHUB_ACTOR --password-stdin
      - name: Download latest image
        run: docker pull ghcr.io/audisoft/flutter:latest
      # Use image.
      - name: Build new image
        run: docker build . --cache-from ghcr.io/audisoft/flutter:latest
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/AudiSoft/flutter_web_docker/issues
