<h1>CIDOR</h1> 
<h3>Canvas IDOR v.2.0.1</h3>

CIDOR is a script written in BASH (Shell Script) to take advantage of Insecure direct object references in Canvas to try to find leaked documents, files from colleges that use Canvas due to misconfigurations. Written by n3on (<a href="https://www.twitter.com/@n3onhacks">@n3onhacks</a>)

<h1></h1>
Updates:
  
Version 2.0.1 is out due to quick changes, possibly due to previous remediations.

<h1>Usage</h1>
  
./cidor.sh

<b>MUST RUN AS ROOT.</b><p>

Follow prompts for input.<p>
-After the program is run, files will be in /downloads folder<p>
-The /temp folder can be emptied at any time after scan; all Application/Pdf files will be copied to the /downloads folder.<p>

<h2>Installation</h2>
>>cd /opt  (*must be in /opt folder to work)<p><p>
>>git clone https://github.com/n3onhacks/cidor.git<p>
>>cd cidor<p>
>>mkdir downloads<p>
>>mkdir temp<p>
>>cd ..<p>
>>chmod +rwx -R cidor<p>
>>cd cidor<p>
>>./cidor.sh<p>

<h1>Installation Video</h1>

https://www.youtube.com/watch?v=RVPJ6I6-lK0&t=5s
