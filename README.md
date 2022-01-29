<h1>CIDOR</h1> 
<h3>Canvas IDOR v.2.1.0</h3>
<img src="https://raw.githubusercontent.com/n3onhacks/cidor/main/cidor-git.jpg" alt="cidor logo">

**!FOLLOW INSTALLATION INSTRUCTIONS BELOW!**<p>
CIDOR is a script written in BASH (Shell Script) to take advantage of Insecure direct object references in Canvas to get documents, files from colleges who have items that remain open. Written by n3on (<a href="https://www.twitter.com/@n3onhacks">@n3onhacks</a>) in an attempt to get fun reading material.

<h1>Videos</h1>

<h3>1. Using CIDOR Video:</h3><p>
 https://youtu.be/dgbUjN18fNs<p>

<h3>2. POC - Finding OLD STANFORD UNIVERSITY MID-TERM ANSWERS w/ CIDOR Video:</h3><p>
 https://www.youtube.com/watch?v=TxAPvd5FLmE<p>
  
<h1>Usage</h1>
  
./cidor.sh

<b>Note: **!MUST RUN CIDOR AS $ROOT!**</b><p>

Follow prompts for input.<p>
-After the cycle is completed, files will be in '/opt/cidor/downloads' folder<p>

 <h1>Installation Instructions</h1>
>>cd /opt  (*must be in /opt folder to work)<p><p>
>>git clone https://github.com/n3onhacks/cidor.git<p>
>>cd cidor<p>
>>mkdir downloads<p>
>>mkdir temp<p>
>>cd ..<p>
>>chmod 777 -R cidor<p>
>>cd cidor<p>
>>./cidor.sh<p>

<h2>Installation Video</h2>

https://www.youtube.com/watch?v=D1CSBlTEuYc

<h1>Version Control</h1>

<h3>Version 2.1.0 release</h3>
-Made more robust for renaming files, autodeleting<p>
-Autodelete files made <p>
  
<h3>Version 2.0.2 release</h3>
-Added multiple files / no longer single file.<p>
-Added automated advanced output reporting features.<p>

<h3>Version 2.0.1 release</h3>
-Narrowed down to one initial file to download.<p>
-Updated README.md<p>

<h3>Version 1.0 release</h3>
-Initial release of fuzzing/clean downloading tool using reoccuring directory structure with Canvas users<p>
-Taking advantage of IDOR in Canvas ...it's CIDOR!<p>
 

