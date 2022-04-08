#Usage#:
1. Download Ansible: [Link Here](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
2. Add the pem keys to credentials/
3. Edit the all.example file and rename it to all
5. Modify the hosts file.
6. Run cd ./execute_ansible.sh to copy the file to /etc/ansible/hosts
6. Run ansible playbook: ansibke-playbook -K site.yml >> out.txt (enter the sudo password)
7. Get the result file out.txt

--------------------------------------------------------------------------------------------------------------------------------

Automate the SSH to the server.

Do everything here inside the server after log in.

1. First check the connection to license server: 
	- Check the telnet lien… 5276
	- Check the Ipadd of licen… 5276 -> if the thing abive false.
	- Openthe fireawall or check the firewall

2.  Check if all the needed ports are open : 80 ,. Using netstats/ or iptables.
The out put of the cmd iptables -Lvn -> want the whole table
The output of cmd netstat -tulpn | grep LISTEN -> want to be specficic for only these ports. 
-> -vvv verbose mode implentm for all ports you can see here .

Check if the 9090, 9191, 9291 if they ar eopen to be access from outside. -> can be seen from netstats but should be double check!

3. Check if the INPUT table is already has the rule with the docker0 accept or not?
If the INPUT chain has the rule already then we dont add it -> print to report that docker rule already there
If its  not add it and then also tell that the docker jsut added. 

4. ping the server's domain, for example: ping cloudsight.swnnms.de -> print the output out 3 pings 
And also the subdoamin to see if it resolve to public IP. - > 3 pings. 
Note: domainname as a params.

5. Exit

6.  Print the report!

