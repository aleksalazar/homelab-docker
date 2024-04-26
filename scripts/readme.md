**Script Creation**

1. **Create a Script File:** Inside your LXC, use your preferred text editor (e.g., nano) to create a new file:

   ```bash
   nano /usr/local/bin/prep_net.sh
   ```

2. **Add the Script Contents:** Paste the following into the file, replacing '**\*\***' with your actual password:

   ```bash
   #!/bin/bash

   # Ensure the mount point directory exists
   mkdir -p /mnt/nas/<serviceName>

   # Mount the CIFS share
   mount -t cifs //<IP>/<serviceName> /mnt/nas/<serviceName> -o username=<serviceName>,password=******
   ```

3. **Save and Exit:** Press Ctrl+O to save, then Ctrl+X to exit.

4. **Make it Executable:**
   ```bash
   chmod +x /usr/local/bin/prep_net.sh
   ```

**Executing on Startup (systemd)**

1. **Create a systemd Service File:**

   ```bash
   nano /etc/systemd/system/prep_net.service
   ```

2. **Add Service Definition:** Paste the following, adjusting if your script path is different:

   ```
   [Unit]
   Description=Mount NAS Share
   After=network.target

   [Service]
   ExecStart=/usr/local/bin/prep_net.sh

   [Install]
   WantedBy=multi-user.target
   ```

3. **Enable the Service:**

   ```bash
   systemctl enable prep_net.service
   ```

4. **Start the Service (Optional):**
   - To mount immediately: `systemctl start prep_net.service`
   - It will automatically start on subsequent LXC boots.

**Security Note:**

- **Storing Passwords:** Ideally, avoid storing passwords in plain text. Consider using a secrets manager or environment variables in a more secure setup.

**Let's Test It!**

- **Reboot your LXC:** After rebooting, check if the share is mounted:
  ```bash
  ls /mnt/nas/<serviceName>
  ```
