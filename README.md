<h1>CIDOR</h1> 
<h3>Canvas IDOR v.1</h3>

CIDOR is a simple script written in BASH (Shell Script) to take advantage of IDOR in Canvas to try to find leaked classes, documents, etc. with colleges that use Canvas.

This is done by fuzzing <domain>/{1-10000}/files/

<h1>Usage</h1>

./cidor.sh

Follow prompts for input.

<h2>Installation</h2>
>>cd /opt<p><p>
>>mkdir cidor<p>
>>cd cidor<p>
>>git clone https://github.com/n3onhacks/cidor.git<p>
>>cd ..<p>
>>chmod +rwx -R cidor<p>
>>cd cidor<p>
>>./cidor.sh<p>
