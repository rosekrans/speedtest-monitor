<!-- hovel-network -->
<!--
*** A speedtest based container that monitors the network speed and latency
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGOS -->
<br />
<p align="center">
    <img src="images/speedtest.png" alt="Logo" width="70" height="80">
  </a>
&nbsp;
&nbsp;
&nbsp;
    <img src="images/grafana.png" alt="Logo" width="80" height="80">
  </a>
&nbsp;
&nbsp;
&nbsp;  
    <img src="images/docker.png" alt="Logo" width="80" height="80">
  </a>


  <h1 align="center">speedtest monitor</h1>

  <p align="center">
    Speedtest based monitor in Grafana.  
    <br />
    <a href="https://github.com/rosekrans/speedtest-monitor/issues">Report Bug</a>
    ·
    <a href="https://github.com/rosekrans/speedtest-monitor/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>


<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.


### Environmental file
Create a .env file in the project root directory.
```
# Grafana
GF_SECURITY_ADMIN_USER=adminuser
GF_SECURITY_ADMIN_PASSWORD=adminpass
GF_USERS_DEFAULT_THEME=dark
GF_USERS_ALLOW_SIGN_UP=false
GF_USERS_ALLOW_ORG_CREATE=false
GF_AUTH_ANONYMOUS_ENABLED=true

# Speedtest
DB_ADDRESS=influxdb
DB_PORT=8086
DB_USER=user
DB_PASSWORD=foobar
DB_DATABASE=network_latency
```

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/rosekrans/speedtest-monitor.git
   ```
2. Run docker-compose
   ```
   docker-compose up -d
   ```
3. http://localhost:3000  example URL



<!-- USAGE EXAMPLES -->
## Usage

Currently this project only works on Rasberry Pi.




<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/rosekrans/speedtest-monitor/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

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

#### Vulco Viljoen

<a href="https://github.com/github_username/repo_name">
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/LinkedIn_logo_initials.png/240px-LinkedIn_logo_initials.png" alt="Logo" width="30" height="30"></a>
&nbsp;
<a href="https://twitter.com/Deagra">
<img src="https://logos-world.net/wp-content/uploads/2020/04/Twitter-Logo-700x394.png" alt="Logo" width="50" height="30"></a>
<br />

https://vulcoviljoen.com


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/rosekrans/speedtest-monitor.svg?style=for-the-badge
[contributors-url]: https://github.com/rosekrans/speedtest-monitor/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/rosekrans/speedtest-monitor.svg?style=for-the-badge
[forks-url]: https://github.com/rosekrans/speedtest-monitor/network/members
[stars-shield]: https://img.shields.io/github/stars/rosekrans/speedtest-monitor.svg?style=for-the-badge
[stars-url]: https://github.com/rosekrans/speedtest-monitor/stargazers
[issues-shield]: https://img.shields.io/github/issues/rosekrans/speedtest-monitor.svg?style=for-the-badge
[issues-url]: https://github.com/rosekrans/speedtest-monitor/issues
[license-shield]: https://img.shields.io/github/license/rosekrans/speedtest-monitor.svg?style=for-the-badge
[license-url]: https://github.com/rosekrans/speedtest-monitor/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/vulco-viljoen
