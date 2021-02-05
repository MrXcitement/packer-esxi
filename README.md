<!-- PROJECT SHIELDS -->
[![Issues][issues-shield]][issues-url]
[![License][license-shield]][license-url]


<!-- PROJECT TITLE & LOGO -->
# Packer vSphere (ESXi) box builder

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Configuration](#configuration)
  * [Usage](#usage)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)


<!-- ABOUT THE PROJECT -->
## About The Project

Use `packer` to build VMware vSphere (ESXi) version 6.0 box.
The vagrant box supports being used by `vagrant` and the `vmware_desktop` provider.


<!-- GETTING STARTED -->
## Getting Started


### Prerequisites

* Hashicorp `packer` tool
* VMware desktop (fusion or workstation)
* VMware vSphere (ESXi) v6.0 installer iso file

### Configuration

Copy the VMware vSphere (ESXi) installer file to the `./isos` folder.
Validate and/or edit the `esxi-60.json` file to use the iso file you copied.

*Note* You must use the correct major version of the installer iso file or `packer` may not be successful building a box file.

<!-- USAGE EXAMPLES -->
### Usage

Run the build-60 script file to build a builds/esxi-60-<provider>-<version>.box

```shell
$ build-60
```

Add the built box to vagrant using the following command.

```shell
$ vagrant box add esxi-60 builds/esxi-60-vmware-0.1.0.box
```

<!-- ROADMAP -->
## Roadmap

See the [open issues][open-issues] for a list of proposed features (and known issues).


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request


<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.


<!-- CONTACT -->
## Contact

Project Link: [packer-esxi](https://github.com/mrxcitement/packer-esxi)

Mike Barker - [@mike_thebarkers](https://twitter.com/mike_thebarkers) - mike@thebarkers.com


<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[issues-shield]: https://img.shields.io/github/issues/mrxcitement/packer-esxi.svg?style=flat-square
[issues-url]: https://github.com/mrxcitement/packer-esxi/issues
[license-shield]: https://img.shields.io/github/license/mrxcitement/packer-esxi.svg?style=flat-square
[license-url]: https://github.com/mrxcitement/packer-esxi/blob/master/LICENSE.txt
[open-issues]: https://github.com/mrxcitement/packer-esxi/issues
