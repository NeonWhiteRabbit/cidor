<h1>CIDOR</h1> 
<h3>Canvas IDOR v.1</h3>

CIDOR is a simple script written in BASH (Shell Script) to take advantage of IDOR in Canvas to try to find leaked documents, files with colleges that use Canvas. Written by n3on (<a href="https://www.twitter.com/@n3onhacks">@n3onhacks</a>)

<h1></h1>
Updates:
  
Version 2.0.1 is out due to quick changes, possibly due to previous remediations.

<h1>Usage</h1>
  
./cidor.sh

<b>MUST RUN AS ROOT.</b><p>

Follow prompts for input.
-Files will be in /downloads folder<p>
-The /temp folder can be emptied at any time, files will be copied to the /downloads folder.<p>

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
<iframe width="560" height="315" src="https://www.youtube.com/embed/RVPJ6I6-lK0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
