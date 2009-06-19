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
public class TaxRate {
	private float reinvestRate = .0f;
	private float withdrawRate = .25f;
	private int startAge = 0;
	private int endAge = 60;

	/**
	 * @return the endAge
	 */
	public int getEndAge() {
		return endAge;
	}

	/**
	 * @return the reinvestRate
	 */
	public float getReinvestRate() {
		return reinvestRate;
	}

	/**
	 * @return the startAge
	 */
	public int getStartAge() {
		return startAge;
	}

	/**
	 * @return the withdrawRate
	 */
	public float getWithdrawRate() {
		return withdrawRate;
	}

	/**
	 * @param endAge
	 *            the endAge to set
	 */
	public void setEndAge(final int endAge) {
		this.endAge = endAge;
	}

	/**
	 * @param reinvestRate
	 *            the reinvestRate to set
	 */
	public void setReinvestRate(final float reinvestRate) {
		this.reinvestRate = reinvestRate;
	}

	/**
	 * @param startAge
	 *            the startAge to set
	 */
	public void setStartAge(final int startAge) {
		this.startAge = startAge;
	}

	/**
	 * @param withdrawRate
	 *            the withdrawRate to set
	 */
	public void setWithdrawRate(final float withdrawRate) {
		this.withdrawRate = withdrawRate;
	}
}
