# ELK-Project
 MSU Cyber Security Bootcamp Project 1

 ## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![AzureREDXCorp+ELK drawio](https://user-images.githubusercontent.com/96896057/167216523-6283c54a-3ba2-4fae-b1c8-f7b6bbe01b56.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the "filebeat-metric-playbook" file may be used to install only certain pieces of it, such as Filebeat.
- [Configure hosts](https://github.com/RyanLinscott/ELK-Project/blob/main/Files/Configuration%20Files/hosts.cfg)
- [Configure Ansible](https://github.com/RyanLinscott/ELK-Project/blob/main/Files/Configuration%20Files/Ansible.cfg)
- [Install Ansible and Configure Docker](https://github.com/RyanLinscott/ELK-Project/blob/main/Files/Installation%20Files/Ansible.yml)
- [Install-ELK](https://github.com/RyanLinscott/ELK-Project/blob/main/Files/Installation%20Files/Install-ELK.yml)
- [filebeat-configuration](https://github.com/RyanLinscott/ELK-Project/blob/main/Files/Configuration%20Files/FileBeatConfig.yml)
- [metricbeat-configuration](https://github.com/RyanLinscott/ELK-Project/blob/main/Files/Configuration%20Files/MetricbeatConfig.yml)
- [filebeat-playbook](https://github.com/RyanLinscott/ELK-Project/blob/main/Files/Playbook%20Files/filebeat-playbook.yml)
- [filebeat-metricbeat-playbook](https://github.com/RyanLinscott/ELK-Project/blob/main/Files/Playbook%20Files/filebeat-metricbeat-playbook.yml)

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
- Personal Home IP (*redacted for security/confidentiality)

Machines within the network can only be accessed by the Jump-Box-Provisioner located at 20.213.123.161

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Allow-SSH-from-Home | No              | Personal Home IP Only    |
|      Allow-SSH-from-Jump   |     No                | 20.213.123.161           |
|     Allow-80-To-Load-Balancer     |     No                |          Personal Home IP Only            |
|

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it allows the machine to quickly be built from scratch on a new server simply by loading in the configuration file without the need to adjust the values manually, saving precious time and allowing monitoring to start taking place with minimal effort and time.

The playbook implements the following tasks:
- Configures and increases VM's maximum memory
- Installs docker.io and python3-pip.
- Installs the docker module
- Downloads and launchs the ELK image "sebp/elk:761"
- Enables docker service on system boot.

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![ELKdockerps](https://user-images.githubusercontent.com/96896057/166451380-08922884-80a6-4c13-9390-8072ed01174f.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- Web-1: 10.0.0.9
- Web-2: 10.0.0.10
- Web-3: 10.0.0.12

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat is a lightweight shipper that is used for forwarding logs and files between containers or servers to one centralized location.  This information is sent to the ELK Stack where it can easily be accessed by the servers administrator.
- Metricbeat gathers metrics and statistics and sends them to a centralized location for administrators to view information pertaining to who is accessing servers.  It will show a wide range of statistics from the operating system those accessing the server are using to what country the users accessing the server are from.  All this information is sent to the ELK Stack where it can easily be viewed by the servers administrator.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the [Install-ELK.yml](https://github.com/RyanLinscott/ELK-Project/blob/main/Installation%20Files/Install-ELK.yml) file to /etc/ansible/roles directory.
  ```
  sudo docker cp Install-ELK.yml "container.name":/etc/ansible/roles/Install-ELK.yml
  ```
- Update the [/etc/ansible/hosts](https://github.com/RyanLinscott/ELK-Project/blob/main/Configuration%20Files/hosts.cfg) file to include the ELK stack private IP as well as indicating what version of python is to be used, as seen below:
![hostsconfiguration](https://user-images.githubusercontent.com/96896057/167226313-7bb7ffae-aaef-4356-9525-908f10c86c27.png)
- Run the playbook using:
  ```
  ansible-playbook /etc/ansible/roles/Install-ELK.yml
  ```


- To install filebeat and metricbeat:

  Copy [filebeat-metricbeat-playbook](https://github.com/RyanLinscott/ELK-Project/blob/main/Playbook%20Files/filebeat-metricbeat-playbook.yml) to the /etc/ansible/roles directory and then run
  ```
  ansible-playbook /etc/ansible/roles/filebeat-metricbeat.yml
  ```


- In order to make ansible run the playbook on a specific machine you must update the [/etc/ansible/files/metricbeat-config.yml](https://github.com/RyanLinscott/ELK-Project/blob/main/Configuration%20Files/MetricbeatConfig.yml) adding in your personal ELK Stack private IP to the "Kibana" and "Elasticsearch output" areas.  The result should be similar to the images below:
![metricbeat addedELKprivate](https://user-images.githubusercontent.com/96896057/167229512-16574e11-77c7-44ba-93b6-4d1fa2ca715a.png)
![metricbeat addedto elasticsearchoutput](https://user-images.githubusercontent.com/96896057/167229516-c7db0cfa-fe04-49b5-81a9-707791eddddb.png)





- Once done navigate to the URL below, inputing your ELK Servers public IP in place of "insert.public.ip" 
  - http://"insert.public.elk.ip":5601/app/kibana
  


- Your site should display a page similar to this:
![KibanaHomeForGitHub](https://user-images.githubusercontent.com/96896057/167226940-64d40d32-d022-4657-bebf-ffeda7eadd6f.png)