package com.moneywizards.server;

/**
 * @author Sameer Nanda
 * 
 */
public class Expense {
	private int monthlyExpense = 2500;
	private int startAge = 20;
	private int endAge = 60;
	private float increase = .01f;

	/**
	 * @return the endAge
	 */
	public int getEndAge() {
		return endAge;
	}

	/**
	 * @return the increase
	 */
	public float getIncrease() {
		return increase;
	}

	/**
	 * @return the monthlyExpense
	 */
	public int getMonthlyExpense() {
		return monthlyExpense;
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
	 * @param increase
	 *            the increase to set
	 */
	public void setIncrease(final float increase) {
		this.increase = increase;
	}

	/**
	 * @param monthlyExpense
	 *            the monthlyExpense to set
	 */
	public void setMonthlyExpense(final int monthlyExpense) {
		this.monthlyExpense = monthlyExpense;
	}

	/**
	 * @param startAge
	 *            the startAge to set
	 */
	public void setStartAge(final int startAge) {
		this.startAge = startAge;
	}
}
