<h1>CIDOR</h1> 
<h3>Canvas IDOR v.2.2.0</h3>
<img src="https://raw.githubusercontent.com/n3onhacks/cidor/main/cidor-git.jpg" alt="cidor logo">

**!FOLLOW INSTALLATION INSTRUCTIONS BELOW!**<p>
CIDOR is a script written in BASH (Shell Script) to take advantage of Insecure direct object references in Canvas to get leaked documents, files from colleges due to misconfigurations. Written by n3on (<a href="https://www.twitter.com/@n3onhacks">@n3onhacks</a>) of WHG crew (https://www.WeHackGovernments.com).

<h2>Videos</h2>

<h3>1. Using CIDOR Video:</h3><p>
 https://www.youtube.com/watch?v=TxAPvd5FLmE<p>

<h3>2. Finding STANFORD UNIVERSITY MID-TERM ANSWERS w/ CIDOR Video:</h3><p>
 https://www.youtube.com/watch?v=TxAPvd5FLmE<p>
  
<h1></h1>

<h3>Version 2.2.0 release</h3>
-Added multiple new files.<p>
-Updated Installation instructions with Video<p>
-Added updated version POC video to README.md<p>
  
<h3>Version 2.1.0 release</h3>
-New folder structure for downloaded assets.<p>
-Worked down to single .sh file to begin program.<p>
-Updated Installation instructions with Video<p>
-Added POC video to README.md<p>

<h3>Version 2.0.1 release</h3>
-Initial release of tool<p>
-New folder structure for downloaded assets.<p>
-Worked down to single .sh file to begin program.<p>
-Updated Installation instructions with Video<p>
-Added POC video to README.md<p>

<h3>Version 1.0 release</h3>
-Initial release of tool based on idor information leakage targeting colleges via Canvas.<p>
 
<h1>Usage</h1>
  
./cidor.sh

<b>MUST RUN AS ROOT.</b><p>

Follow prompts for input.<p>
-After the program is run, files will be in /downloads folder<p>
-The /temp folder can be emptied at any time after scan; all Application/Pdf files will be copied to the /downloads folder.<p>

<h1>INSTALLATION INSTRUCTIONS</h1>
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

https://www.youtube.com/watch?v=D1CSBlTEuYc
