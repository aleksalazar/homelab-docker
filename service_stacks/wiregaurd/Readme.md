Just go here:

- [LinuxServer.io Docs](https://docs.linuxserver.io/images/docker-wireguard/)

# Usage

- Change peers depending on how many devices you want to connect.
- Computer:
  - Install wireguard on device [https://www.wireguard.com/install/](https://www.wireguard.com/install/)
  - Check that static ip and dns is still relevant, otherwise just use DHCP and default DNS.
  - Connect with computer use file located: `</path/to/host/config>/peer<number>/peer<number/name>.conf`. If running in vm use secure copy protocol: `scp root@<ip>:<path> <path/to/local>`.
    - GUI: Upload the file to the GUI interface and connect.
    - CLI: `mv peer<number/name>.conf /etc/wireguard/wg0.conf` (create path if it does not exist) and run `wg-quick up wg0`
- Phone:
  - Generate QR to connect smartphone: `docker exec -it wireguard /app/show-peer <number/name>`
    - Inside portainer: The terminal will also print the qr-code on initial startup

# Notes

- Depending on the system you might need to allow ip forwarding. `sysctl net.ipv4.ip_forward=1`
  - Uncomment/add `net.ipv4.ip_forward = 1` for permanent change at `/etc/sysctl.conf`
  - Changes need to made for host and vm/lxc.
- If running in an lxc container, it’s best to keep it unprivileged.
