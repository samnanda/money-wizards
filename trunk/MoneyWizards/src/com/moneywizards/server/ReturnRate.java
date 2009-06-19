/**
 * (c) 2009 money-wizards.com
 * The applicaion souce code for this website is not freeware.
 * This includes but is not limited to all java, xml, and properties files.
 * It is licensed under the LGPL, which means that after you purchase it, it will be free for you to use in any way you see fit.
 * It is free as in freedom of speech but not as in free beer.
 */
package com.moneywizards.server;

/**
 * @author Sameer Nanda
 * 
 */
public class ReturnRate {
	private float rate = .06f;
	private int startAge = 0;
	private int endAge = 60;

	/**
	 * @return the endAge
	 */
	public int getEndAge() {
		return endAge;
	}

	/**
	 * @return the rate
	 */
	public float getRate() {
		return rate;
	}

	/**
	 * @return the startAge
	 */
	public int getStartAge() {
		return startAge;
	}

	/**
	 * @param endAge
	 *            the endAge to set
	 */
	public void setEndAge(final int endAge) {
		this.endAge = endAge;
	}

	/**
	 * @param rate
	 *            the rate to set
	 */
	public void setRate(final float rate) {
		this.rate = rate;
	}

	/**
	 * @param startAge
	 *            the startAge to set
	 */
	public void setStartAge(final int startAge) {
		this.startAge = startAge;
	}
}
