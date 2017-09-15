package main.java.gov.usda.fs.sso.saml;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.opensaml.saml2.metadata.provider.MetadataProviderException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.saml.SAMLEntryPoint;
import org.springframework.security.saml.context.SAMLMessageContext;
import org.springframework.security.saml.websso.WebSSOProfileOptions;

public class CustomeSamlEntryPoint  extends SAMLEntryPoint {
	   private String relayState;

	   @Override 
	   public void commence(HttpServletRequest request, HttpServletResponse response, AuthenticationException authenticationException) throws IOException, ServletException {
	       //read your request parameter
		   System.out.println("Setting RelayState======" + request.getParameter("relayState") );
	       setRelayState(request.getParameter("relayState"));
	       super.commence(request, response, authenticationException);
	   }

	   @Override
	   protected WebSSOProfileOptions getProfileOptions(SAMLMessageContext samlMessageContext, AuthenticationException authenticationException) throws MetadataProviderException {
	       //set the relayState to your SAML message context
	       samlMessageContext.setRelayState(getRelayState());
	       return super.getProfileOptions(samlMessageContext, authenticationException);
	   }

	   private void setRelayState(String relayState) {
	       this.relayState = relayState;
	   }

	   private String getRelayState() {
	       return relayState;
	   }
	}