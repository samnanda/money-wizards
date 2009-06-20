package com.moneywizards.server;

public class Income {
	private int monthlyIncome = 3000;
	private int startAge = 20;
	private int endAge = 60;
	private float raise = .01f;

	/**
	 * @return the endAge
	 */
	public int getEndAge() {
		return endAge;
	}

	/**
	 * @return the monthlyIncome
	 */
	public int getMonthlyIncome() {
		return monthlyIncome;
	}

	/**
	 * @return the raise
	 */
	public float getRaise() {
		return raise;
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
	 * @param monthlyIncome
	 *            the monthlyIncome to set
	 */
	public void setMonthlyIncome(final int monthlyIncome) {
		this.monthlyIncome = monthlyIncome;
	}

	/**
	 * @param raise
	 *            the raise to set
	 */
	public void setRaise(final float raise) {
		this.raise = raise;
	}

	/**
	 * @param startAge
	 *            the startAge to set
	 */
	public void setStartAge(final int startAge) {
		this.startAge = startAge;
	}

}
