# CORSorigin
Take a list of domains and see if any of them have a CORS Reflection of Origin Vulnerability

<b>Usage: ./corsorigin.sh -f <DOMAINFILE.txt></b>

<h3>CORSorigin v.1.0</h3>

Reflection of Origin in Access-Control-Allow-Origin

"The real-world scenario where the Origin header's value is reflected in Access-Control-Allow-Origin is theoretically improbable due to restrictions on combining these headers. However, developers seeking to enable CORS for multiple URLs may dynamically generate the Access-Control-Allow-Origin header by copying the Origin header's value. This approach can introduce vulnerabilities, particularly when an attacker employs a domain with a name designed to appear legitimate, thereby deceiving the validation logic."
(Read more at https://book.hacktricks.xyz/pentesting-web/cors-bypass)

<h2>Notes: </h2>

 <h1>Installation Instructions</h1>
>>git clone https://github.com/NeonWhiteRabbit/corsorigin.git<br>
>>chmod 777 corsorigin.sh<br>

<h1>Version Control</h1>
 
 <h3>Version 1.0 release</h3>
-Initial Release<P>
 
