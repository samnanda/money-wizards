/**
 * 
 */
package com.moneywizards.server;

import java.util.ArrayList;

/**
 * @author Sameer Nanda
 * 
 */
public class NetWorthCalc {
	private int startAge = 20;
	private long startNetWorth = -15000;
	private ArrayList<Income> incomes = new ArrayList<Income>();
	private ArrayList<Expense> expenses = new ArrayList<Expense>();
	private ArrayList<ReturnRate> returnRates = new ArrayList<ReturnRate>();
	private ArrayList<TaxRate> taxRates = new ArrayList<TaxRate>();
	{
		incomes.add(new Income());
		expenses.add(new Expense());
		returnRates.add(new ReturnRate());
		taxRates.add(new TaxRate());
	}

	/**
	 * @return the expenses
	 */
	public ArrayList<Expense> getExpenses() {
		return expenses;
	}

	/**
	 * @return the incomes
	 */
	public ArrayList<Income> getIncomes() {
		return incomes;
	}

	/**
	 * @return the returnRates
	 */
	public ArrayList<ReturnRate> getReturnRates() {
		return returnRates;
	}

	/**
	 * @return the startAge
	 */
	public int getStartAge() {
		return startAge;
	}

	/**
	 * @return the startNetWorth
	 */
	public long getStartNetWorth() {
		return startNetWorth;
	}

	/**
	 * @return the taxRates
	 */
	public ArrayList<TaxRate> getTaxRates() {
		return taxRates;
	}

	/**
	 * @param expenses
	 *            the expenses to set
	 */
	public void setExpenses(final ArrayList<Expense> expenses) {
		this.expenses = expenses;
	}

	/**
	 * @param incomes
	 *            the incomes to set
	 */
	public void setIncomes(final ArrayList<Income> incomes) {
		this.incomes = incomes;
	}

	/**
	 * @param returnRates
	 *            the returnRates to set
	 */
	public void setReturnRates(final ArrayList<ReturnRate> returnRates) {
		this.returnRates = returnRates;
	}

	/**
	 * @param startAge
	 *            the startAge to set
	 */
	public void setStartAge(final int startAge) {
		this.startAge = startAge;
	}

	/**
	 * @param startNetWorth
	 *            the startNetWorth to set
	 */
	public void setStartNetWorth(final long startNetWorth) {
		this.startNetWorth = startNetWorth;
	}

	/**
	 * @param taxRates
	 *            the taxRates to set
	 */
	public void setTaxRates(final ArrayList<TaxRate> taxRates) {
		this.taxRates = taxRates;
	}
}
