package com.moneywizards.server;

import com.google.gwt.user.server.rpc.RemoteServiceServlet;
import com.moneywizards.client.GreetingService;

/**
 * The server side implementation of the RPC service.
 */
@SuppressWarnings("serial")
public class GreetingServiceImpl extends RemoteServiceServlet implements
		GreetingService {

	public String greetServer(final String input) {
		final String serverInfo = getServletContext().getServerInfo();
		final String userAgent = getThreadLocalRequest()
				.getHeader("User-Agent");
		return "Hello, " + input + "!<br><br>I am running " + serverInfo
				+ ".<br><br>It looks like you are using:<br>" + userAgent;
	}
}
