package com.moneywizards.server;

import java.util.Date;

import javax.jdo.PersistenceManager;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

public class SaveNetWorthSearch {
	static final void saveNetWorth(final NetWorthCalc nwc) {
		final UserService userService = UserServiceFactory.getUserService();
		final User user = userService.getCurrentUser();
		final Date date = new Date();
		final NetWorthSearch netWorthSearch = new NetWorthSearch(user, nwc,
				date);

		final PersistenceManager pm = PMF.get().getPersistenceManager();
		try {
			pm.makePersistent(netWorthSearch);
		} finally {
			pm.close();
		}
	}
}