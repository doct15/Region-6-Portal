<%@ page import="org.springframework.security.saml.SAMLCredential" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.core.Authentication" %>
<%@ page import="org.opensaml.saml2.core.Attribute" %>
<%@ page import="org.springframework.security.saml.util.SAMLUtil" %>
<%@ page import="org.opensaml.xml.util.XMLHelper" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.io.*,java.util.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">

<head>

</head>

	<body>
      
   <%
     
     Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
     SAMLCredential credential = (SAMLCredential) authentication.getCredentials();
     String url = credential.getRelayState();
     String acn = credential.getAttributeAsString("usdacn");
     String assertion = XMLHelper.nodeToString(SAMLUtil.marshallMessage(credential.getAuthenticationAssertion()));
     String value1 = " { SAMLASSERTION:" + assertion + 
                     "   , " + " usdacn:" + acn +
                     "}";
     session.setAttribute("JSON", value1);
     String newSite = new String("app.jsp");
              response.setStatus(response.SC_MOVED_TEMPORARILY);
              response.setHeader("location" , url);//newSite);
              
    %>
          
		</body>
</html>

