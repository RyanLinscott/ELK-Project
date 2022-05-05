# ELK-Project
 MSU Cyber Security Bootcamp Project 1

 ## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![AzureREDXCorp+ELK drawio](https://user-images.githubusercontent.com/96896057/167038237-fe1ec561-36d0-47ed-970e-2441d11c7a69.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the "filebeatmetric-playbook" file may be used to install only certain pieces of it, such as Filebeat.

- [Install Ansible and Configure Docker](https://github.com/RyanLinscott/ELK-Project/blob/main/Installation%20Files/Ansible.yml)
- [Install-ELK](https://github.com/RyanLinscott/ELK-Project/blob/main/Installation%20Files/Install-ELK.yml)
- [filebeat-configuration](https://github.com/RyanLinscott/ELK-Project/blob/main/Configuration%20Files/FileBeatConfig.yml)
- [metricbeat-configuration](https://github.com/RyanLinscott/ELK-Project/blob/main/Configuration%20Files/MetricbeatConfig.yml)
- [filebeat-playbook](https://github.com/RyanLinscott/ELK-Project/blob/main/Playbook%20Files/filebeat-playbook.yml)
- [filebeat-metricbeat-playbook](https://github.com/RyanLinscott/ELK-Project/blob/main/Playbook%20Files/filebeat-metricbeat-playbook.yml)

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly accessable, in addition to restricting unauthorized access to the network.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the log data and system metrics.

The configuration details of each machine may be found below.

| Name     | Function | Private IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump-Box-Provisioner | Gateway  | 10.0.0.1   | Linux (ubuntu 18.04 LTS)          |
| Web-1     |    DVWA Server      | 10.0.0.9         | Linux (ubuntu 18.04 LTS)                 |
| Web-2     |    DVWA Server      | 10.0.0.10        | Linux (ubuntu 18.04 LTS)               |
| Web-3     |    DVWA Server      | 10.0.0.12        | Linux (ubuntu 18.04 LTS)                |
| ELK-Machine |  ELK Stack       | 10.1.0.4       | Linux (ubuntu 18.04 LTS)                   |  

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump-Box-Provisoner can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- Personal Home IP (redacted for security)

Machines within the network can only be accessed by the Jump-Box-Provisioner located at 20.213.123.161

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Allow-SSH-from-Home | No              | Personal Home IP Only    |
|      Allow-SSH-from-Jump   |     No                | 20.213.123.161           |
|     Allow-80-To-Load-Balancer     |     No                |          Personal Host IP Only            |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it allows the machine to quickly be built from scratch on a new server simply by loading in the configuration file without the need to adjust the values manually, saving precious time and allowing monitoring to start taking place with minimal effort and time.

The playbook implements the following tasks:
- Inceases used system memory.
- Installs Docker.io
- Installs Python3-pip
- Installs Docker module
- Downloads and launchs sebp/elk:761 image
- Enables Docker on system boot

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![ELKdockerps](https://user-images.githubusercontent.com/96896057/166451380-08922884-80a6-4c13-9390-8072ed01174f.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.0.0.9
- 10.0.0.10
- 10.0.0.12

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
