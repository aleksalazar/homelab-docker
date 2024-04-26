# README for homelab-docker

## Introduction

This repository contains a collection of Docker Compose files designed to simplify the deployment of various services related to media acquisition, personal cloud, networking, and entertainment. These services include, but are not limited to, torrent clients, Usenet clients, VPN setups, media server tools like Jellyfin, indexing and tracking tools such as Prowlarr and Radarr, Nextcloud for file synchronization and sharing, Pi-hole for network ad blocking, WireGuard for secure VPN access, Cloudflare DDNS for dynamic DNS updates, Mailrise for SMTP server emulation, Nginx Proxy Manager for handling reverse proxy needs, and Homarr as a homepage for your services.

The goal of this repository is to provide a resource that can be utilized to deploy these services quickly and efficiently using Docker and Docker Compose, catering especially to those who wish to manage their services in a containerized environment.

## Disclaimer

This repository and its contents are provided for educational and informational purposes only. The owner of this repository assumes no responsibility for the misuse or illegal use of any of the software included. The Docker Compose files and any associated configurations are provided "as is" without warranty of any kind, whether express or implied. Users are solely responsible for complying with all applicable laws and regulations in their respective jurisdictions. Usage of the software and configurations provided in this repository implies agreement to this disclaimer and a full understanding that the repository owner cannot be held liable for any misuse or damages resulting from the use of this content.

## How to Use This Repository

1. **Prerequisites**: Ensure Docker, Docker Compose, and, optionally, Portainer are installed on your system.
2. **Fork the Repository (Necessary for Portainer)**: Use GitHub to fork this repository to your own account.
3. **Clone the Repository**: Use Git to clone your forked repository to your local machine or server.
4. **Create .env Files**: For each service, create a `.env` file in the service's directory. This file should contain all the necessary environment variables for that service. Make sure to replace all placeholder values with your actual data.
5. **Navigate to Service Directory**: Each service is contained in its own directory with its specific Docker Compose file.
6. **Configuration Adjustments**: Before deployment, review and adjust the configurations (such as environmental variables and volume mappings) to suit your setup and security requirements.
7. **Deployment**: There are two ways to deploy your services:
   - **Docker Compose**: Navigate to the directory of the service you wish to deploy and run `docker-compose up -d` to start the service in detached mode.
   - **Portainer**: In Portainer, navigate to the "Stacks" section and click on "Add a new stack". In the "Web editor" field, paste the URL of your `docker-compose.yml` file from your forked GitHub repository and click on "Deploy the stack".
8. **Management**: Use Docker Compose commands or Portainer to manage and monitor your services.

## Contributing

Contributions to this repository are welcome. Please ensure that any pull requests or changes adhere to the existing structure and quality standards of the repository.

## Support

For questions or support regarding the configurations in this repository, please open an issue in the GitHub issue tracker associated with this repository.

---

#### Tags

`#DockerCompose` `#MediaServer` `#VPN` `#Networking` `#PersonalCloud` `#AdBlocking` `#OpenSource` `#DIY` `#HomeNetworking` `#Tech`
