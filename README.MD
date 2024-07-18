Reflection of Origin in Access-Control-Allow-Origin

"The real-world scenario where the Origin header's value is reflected in Access-Control-Allow-Origin is theoretically improbable due to restrictions on combining these headers. However, developers seeking to enable CORS for multiple URLs may dynamically generate the Access-Control-Allow-Origin header by copying the Origin header's value. This approach can introduce vulnerabilities, particularly when an attacker employs a domain with a name designed to appear legitimate, thereby deceiving the validation logic."
(Read more at https://book.hacktricks.xyz/pentesting-web/cors-bypass)
