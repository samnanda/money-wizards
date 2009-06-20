package com.moneywizards.server;

import java.text.DateFormat;
import java.util.Date;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.users.User;

@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class NetWorthSearch {
	private static final DateFormat DF = DateFormat.getDateTimeInstance(
			DateFormat.SHORT, DateFormat.MEDIUM);

	@Persistent
	private User author;

	@Persistent
	private NetWorthCalc netWorthCalc;

	@Persistent
	private Date date;

	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Long id;

	public NetWorthSearch(final User author, final NetWorthCalc netWorthCalc,
			final Date date) {
		this.author = author;
		this.netWorthCalc = netWorthCalc;
		this.date = date;
	}

	public String formattedDate() {
		return DF.format(date);
	}

	public User getAuthor() {
		return author;
	}

	public Date getDate() {
		return date;
	}

	public Long getId() {
		return id;
	}

	public NetWorthCalc getNetWorthCalc() {
		return netWorthCalc;
	}

	public void setAuthor(final User author) {
		this.author = author;
	}

	public void setDate(final Date date) {
		this.date = date;
	}

	public void setNetWorthCalc(final NetWorthCalc netWorthCalc) {
		this.netWorthCalc = netWorthCalc;
	}

}