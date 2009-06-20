package com.moneywizards.client;

import com.google.gwt.core.client.EntryPoint;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.event.dom.client.ClickHandler;
import com.google.gwt.event.dom.client.KeyCodes;
import com.google.gwt.event.dom.client.KeyUpEvent;
import com.google.gwt.event.dom.client.KeyUpHandler;
import com.google.gwt.i18n.client.NumberFormat;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.FlexTable;
import com.google.gwt.user.client.ui.RootPanel;
import com.google.gwt.user.client.ui.TextBox;

/**
 * Entry point classes define <code>onModuleLoad()</code>.
 */
public class IntermediateNetWorth implements EntryPoint {
	/**
	 * Dollar formatter
	 */
	final NumberFormat nf = NumberFormat.getFormat("$#,##0");

	private static final int AGE_DEF = 20;
	private static final int AGE_MIN = 0;
	private static final int AGE_MAX = 100;

	/**
	 * Add a text box to its container
	 * 
	 */
	private void addTextBox(final TextBox tb, final String container,
			final String text, final String title, final String width,
			final int length, final KeyUpHandler handler) {
		tb.setText(text);
		tb.setTitle(title);
		tb.setWidth(width);
		tb.setMaxLength(length);
		tb.addKeyUpHandler(handler);
		RootPanel.get(container).add(tb);
	}

	/**
	 * This is the entry point method.
	 */
	public void onModuleLoad() {
		final Button sendButton = new Button("Shack or Mansion?");
		final Button saveButton = new Button("Save Search");
		final TextBox age1Field = new TextBox();
		final TextBox netWorth1Field = new TextBox();
		final TextBox monthlyIncome1Field = new TextBox();
		final TextBox monthlyIncome1StartField = new TextBox();
		final TextBox monthlyIncome1EndField = new TextBox();
		final TextBox monthlyIncome1RaiseField = new TextBox();
		final TextBox monthlyIncome2Field = new TextBox();
		final TextBox monthlyIncome2StartField = new TextBox();
		final TextBox monthlyIncome2EndField = new TextBox();
		final TextBox monthlyIncome2RaiseField = new TextBox();
		final TextBox monthlyExpense1Field = new TextBox();
		final TextBox monthlyExpense1StartField = new TextBox();
		final TextBox monthlyExpense1EndField = new TextBox();
		final TextBox monthlyExpense1IncreaseField = new TextBox();
		final TextBox monthlyExpense2Field = new TextBox();
		final TextBox monthlyExpense2StartField = new TextBox();
		final TextBox monthlyExpense2EndField = new TextBox();
		final TextBox monthlyExpense2IncreaseField = new TextBox();
		final TextBox rate1Field = new TextBox();
		final TextBox rate1StartField = new TextBox();
		final TextBox rate1EndsField = new TextBox();
		final TextBox rate2Field = new TextBox();
		final TextBox rate2StartField = new TextBox();
		final TextBox rate2EndsField = new TextBox();
		final TextBox earningsTaxRateBefore60Field = new TextBox();
		final TextBox earningsTaxRateAfter60Field = new TextBox();
		final TextBox withdrawlTaxRateBefore60Field = new TextBox();
		final TextBox withdrawlTaxRateAfter60Field = new TextBox();

		// Create a handler to submit form
		class MyHandler implements ClickHandler, KeyUpHandler {
			/**
			 * Send the name from the nameField to the server and wait for a
			 * response.
			 */
			private void calcNetWorth() {
				// sendButton.setEnabled(false);
				int _age1 = parseInt(age1Field, AGE_DEF, AGE_MIN, AGE_MAX - 1);
				long _netWorth1 = parseLong(netWorth1Field, 0, -9999999999l,
						99999999999l);
				int _monthlyIncome1 = parseInt(monthlyIncome1Field, 0, -99999,
						999999);
				final int _monthlyIncome1Start = parseInt(
						monthlyIncome1StartField, 0, 0, 99);
				final int _monthlyIncome1End = parseInt(monthlyIncome1EndField,
						100, 0, 100);
				final float _monthlyIncome1Raise = parseFloat(
						monthlyIncome1RaiseField, .01f, -.5f, .5f);
				int _monthlyIncome2 = parseInt(monthlyIncome2Field, 0, -99999,
						999999);
				final int _monthlyIncome2Start = parseInt(
						monthlyIncome2StartField, 0, 0, 99);
				final int _monthlyIncome2End = parseInt(monthlyIncome2EndField,
						100, 0, 100);
				final float _monthlyIncome2Raise = parseFloat(
						monthlyIncome2RaiseField, .01f, -.5f, .5f);
				int _monthlyExpense1 = parseInt(monthlyExpense1Field, 0,
						-99999, 999999);
				final int _monthlyExpense1Start = parseInt(
						monthlyExpense1StartField, AGE_DEF, AGE_MIN,
						AGE_MAX - 1);
				final int _monthlyExpense1End = parseInt(
						monthlyExpense1EndField, AGE_MAX, AGE_MIN, AGE_MAX);
				final float _monthlyExpense1Increase = parseFloat(
						monthlyExpense1IncreaseField, .01f, -.5f, .5f);
				int _monthlyExpense2 = parseInt(monthlyExpense2Field, 0,
						-99999, 999999);
				final int _monthlyExpense2Start = parseInt(
						monthlyExpense2StartField, AGE_MIN, AGE_MIN,
						AGE_MAX - 1);
				final int _monthlyExpense2End = parseInt(
						monthlyExpense2EndField, AGE_MAX, AGE_MIN, AGE_MAX);
				final float _monthlyExpense2Increase = parseFloat(
						monthlyExpense2IncreaseField, .01f, -.5f, .5f);
				final float _rate1 = parseFloat(rate1Field, 6f, -50f, 50f);
				final int _rate1Start = parseInt(rate1StartField, AGE_MIN,
						AGE_MIN, AGE_MAX - 1);
				final int _rate1Ends = parseInt(rate1EndsField, AGE_MAX,
						AGE_MIN, AGE_MAX);
				final float _rate2 = parseFloat(rate2Field, 0f, -50f, 50f);
				final int _rate2Start = parseInt(rate2StartField, AGE_MIN,
						AGE_MIN, AGE_MAX - 1);
				final int _rate2Ends = parseInt(rate2EndsField, AGE_MAX,
						AGE_MIN, AGE_MAX);
				final float _earningsTaxRateBefore60 = parseFloat(
						earningsTaxRateBefore60Field, 0f, 0f, .5f);
				final float _earningsTaxRateAfter60 = parseFloat(
						earningsTaxRateAfter60Field, .15f, 0f, .5f);
				final float _withdrawlTaxRateBefore60 = parseFloat(
						withdrawlTaxRateBefore60Field, .25f, 0f, .5f);
				final float _withdrawlTaxRateAfter60 = parseFloat(
						withdrawlTaxRateAfter60Field, .15f, 0f, .5f);

				int row = 0;
				// Create flex table
				final FlexTable t = new FlexTable();
				t.setCellSpacing(5);
				t.setText(0, 0, "Age");
				t.setText(0, 1, "Net Worth");
				t.setText(0, 2, "Annual Return");
				t.setText(0, 3, "Monthly Investment/Withdrawl");
				RootPanel.get("resultsContainer").clear();
				RootPanel.get("resultsContainer").add(t);

				while (_age1++ < 100) {
					float _rate = 0;
					if (_rate1Start <= _age1 && _rate1Ends >= _age1) {
						_rate += _rate1;
					}
					if (_rate2Start <= _age1 && _rate2Ends >= _age1) {
						_rate += _rate2;
					}

					// return on investment before taxes
					final long annualReturn = (long) (_netWorth1 * _rate);

					int _monthlyIncome = 0;
					if (_monthlyIncome1Start <= _age1
							&& _monthlyIncome1End >= _age1) {
						// apply raise each year the income is earned
						_monthlyIncome1 = (int) (_monthlyIncome1 * (1 + _monthlyIncome1Raise));
						_monthlyIncome += _monthlyIncome1;
					}
					if (_monthlyIncome2Start <= _age1
							&& _monthlyIncome2End >= _age1) {
						// apply raise each year the income is earned
						_monthlyIncome2 = (int) (_monthlyIncome2 * (1 + _monthlyIncome2Raise));
						_monthlyIncome += _monthlyIncome2;
					}

					int _monthlyExpense = 0;
					if (_monthlyExpense1Start <= _age1
							&& _monthlyExpense1End >= _age1) {
						// apply increase each year the expense is incurred
						_monthlyExpense1 = (int) (_monthlyExpense1 * (1 + _monthlyExpense1Increase));
						_monthlyExpense += _monthlyExpense1;
					}
					if (_monthlyExpense2Start <= _age1
							&& _monthlyExpense2End >= _age1) {
						// apply increase each year the expense is incurred
						_monthlyExpense2 = (int) (_monthlyExpense2 * (1 + _monthlyExpense2Increase));
						_monthlyExpense += _monthlyExpense2;
					}

					int _monthlyNet = (int) (annualReturn / 12 + _monthlyIncome - _monthlyExpense);
					if (_monthlyNet > 0) {
						if (_age1 >= 60) {
							_monthlyNet = (int) (_monthlyNet * (1 - _earningsTaxRateAfter60));
						} else {
							_monthlyNet = (int) (_monthlyNet * (1 - _earningsTaxRateBefore60));
						}
					} else {
						if (_age1 >= 60) {
							_monthlyNet = (int) (_monthlyNet * (1 - _withdrawlTaxRateAfter60));
						} else {
							_monthlyNet = (int) (_monthlyNet * (1 - _withdrawlTaxRateBefore60));
						}
					}

					_netWorth1 += _monthlyNet * 12;

					t.setText(++row, 0, String.valueOf(_age1));
					t.setText(row, 1, nf.format(_netWorth1));
					t.setText(row, 2, nf.format(annualReturn));
					t.setText(row, 3, nf.format(_monthlyNet));
				}
			}

			/**
			 * Fired when the user clicks on the sendButton.
			 */
			public void onClick(final ClickEvent event) {
				calcNetWorth();
			}

			/**
			 * Fired when the user types in the nameField.
			 */
			public void onKeyUp(final KeyUpEvent event) {
				if (event.getNativeKeyCode() == KeyCodes.KEY_ENTER) {
					calcNetWorth();
				}
			}

			private float parseFloat(final TextBox tb,
					final float defaultValue, final float min, final float max) {
				float returnVal = defaultValue;
				if (tb != null) {
					final String val = tb.getText();
					if (val != null) {
						try {
							returnVal = Float.valueOf(val).floatValue();
						} catch (final Exception ex) {
							ex.printStackTrace();
						}
					}
				}
				if (returnVal < min) {
					returnVal = min;
				}
				if (returnVal > max) {
					returnVal = max;
				}
				return returnVal;
			}

			private int parseInt(final TextBox tb, final int defaultValue,
					final int min, final int max) {
				int returnVal = defaultValue;
				if (tb != null) {
					final String val = tb.getText();
					if (val != null) {
						try {
							returnVal = Integer.valueOf(val).intValue();
						} catch (final Exception ex) {
							ex.printStackTrace();
						}
					}
				}
				if (returnVal < min) {
					returnVal = min;
				}
				if (returnVal > max) {
					returnVal = max;
				}
				return returnVal;
			}

			private long parseLong(final TextBox tb, final long defaultValue,
					final long min, final long max) {
				long returnVal = defaultValue;
				if (tb != null) {
					final String val = tb.getText();
					if (val != null) {
						try {
							returnVal = Long.valueOf(val).longValue();
						} catch (final Exception ex) {
							ex.printStackTrace();
						}
					}
				}
				if (returnVal < min) {
					returnVal = min;
				}
				if (returnVal > max) {
					returnVal = max;
				}
				return returnVal;
			}
		}

		// Add a handler to send the name to the server
		final MyHandler handler = new MyHandler();

		addTextBox(age1Field, "age1FieldContainer", String.valueOf(AGE_DEF),
				"Please enter age " + AGE_MIN + " to " + (AGE_MAX - 1), "20",
				2, handler);
		addTextBox(netWorth1Field, "netWorth1FieldContainer", "-15000",
				"Initial Net Worth -9999999999 to 99999999999", "100", 11,
				handler);
		addTextBox(monthlyIncome1Field, "monthlyIncome1FieldContainer", "3000",
				"Income to invest or spend -99999 to 999999", "100", 6, handler);
		addTextBox(monthlyIncome1StartField,
				"monthlyIncome1StartFieldContainer", String.valueOf(AGE_DEF),
				AGE_MIN + " to " + (AGE_MAX - 1), "20", 2, handler);
		addTextBox(monthlyIncome1EndField, "monthlyIncome1EndFieldContainer",
				"60", AGE_MIN + " to " + AGE_MAX, "20", 3, handler);
		addTextBox(monthlyIncome1RaiseField,
				"monthlyIncome1RaiseFieldContainer", ".01", "-.5 to .5", "20",
				4, handler);
		addTextBox(monthlyIncome2Field, "monthlyIncome2FieldContainer", "1500",
				"-99999 to 999999", "100", 6, handler);
		addTextBox(monthlyIncome2StartField,
				"monthlyIncome2StartFieldContainer", "60", AGE_MIN + " to "
						+ (AGE_MAX - 1), "20", 2, handler);
		addTextBox(monthlyIncome2EndField, "monthlyIncome2EndFieldContainer",
				String.valueOf(AGE_MAX), AGE_MIN + " to " + AGE_MAX, "20", 3,
				handler);
		addTextBox(monthlyIncome2RaiseField,
				"monthlyIncome2RaiseFieldContainer", "0", "-.5 to .5", "100",
				11, handler);
		addTextBox(monthlyExpense1Field, "monthlyExpense1FieldContainer",
				"2500", "-99999 to 999999", "100", 6, handler);
		addTextBox(monthlyExpense1StartField,
				"monthlyExpense1StartFieldContainer", String.valueOf(AGE_MIN),
				AGE_MIN + " to " + (AGE_MAX - 1), "20", 2, handler);
		addTextBox(monthlyExpense1EndField, "monthlyExpense1EndFieldContainer",
				String.valueOf(AGE_MAX), AGE_MIN + " to " + AGE_MAX, "20", 3,
				handler);
		addTextBox(monthlyExpense1IncreaseField,
				"monthlyExpense1IncreaseFieldContainer", ".01", "-.5 to .5",
				"20", 4, handler);
		addTextBox(monthlyExpense2Field, "monthlyExpense2FieldContainer", "0",
				"-99999 to 999999", "100", 6, handler);
		addTextBox(monthlyExpense2StartField,
				"monthlyExpense2StartFieldContainer", String.valueOf(AGE_MIN),
				AGE_MIN + " to " + (AGE_MAX - 1), "20", 2, handler);
		addTextBox(monthlyExpense2EndField, "monthlyExpense2EndFieldContainer",
				"0", AGE_MIN + " to " + AGE_MAX, "20", 3, handler);
		addTextBox(monthlyExpense2IncreaseField,
				"monthlyExpense2IncreaseFieldContainer", "0", "-.5 to .5",
				"20", 4, handler);
		addTextBox(rate1Field, "rate1FieldContainer", ".06", "-.5 to .5", "20",
				4, handler);
		addTextBox(rate1StartField, "rate1StartFieldContainer", String
				.valueOf(AGE_MIN), AGE_MIN + " to " + (AGE_MAX - 1), "20", 2,
				handler);
		addTextBox(rate1EndsField, "rate1EndsFieldContainer", "60", AGE_MIN
				+ " to " + AGE_MAX, "20", 3, handler);
		addTextBox(rate2Field, "rate2FieldContainer", ".04", "-.5 to .5", "20",
				4, handler);
		addTextBox(rate2StartField, "rate2StartFieldContainer", "60", AGE_MIN
				+ " to " + (AGE_MAX - 1), "20", 2, handler);
		addTextBox(rate2EndsField, "rate2EndsFieldContainer", String
				.valueOf(AGE_MAX), AGE_MIN + " to " + AGE_MAX, "20", 3, handler);
		addTextBox(earningsTaxRateBefore60Field,
				"earningsTaxRateBefore60FieldContainer", "0", "0 to .5", "20",
				3, handler);
		addTextBox(earningsTaxRateAfter60Field,
				"earningsTaxRateAfter60FieldContainer", ".15", "0 to .5", "20",
				3, handler);
		addTextBox(withdrawlTaxRateBefore60Field,
				"withdrawlTaxRateBefore60FieldContainer", ".25", "0 to .5",
				"20", 3, handler);
		addTextBox(withdrawlTaxRateAfter60Field,
				"withdrawlTaxRateAfter60FieldContainer", ".15", "0 to .5",
				"20", 3, handler);

		RootPanel.get("sendButtonContainer").add(sendButton);

		// create a handler for saving the parameters
		final ClickHandler saveHandler = new ClickHandler() {

			@Override
			public void onClick(final ClickEvent event) {

			}

		};
		saveButton.addClickHandler(saveHandler);

		RootPanel.get("saveButtonContainer").add(saveButton);

		// Focus the cursor on the name field when the app loads
		age1Field.setFocus(true);
		age1Field.selectAll();

		sendButton.addClickHandler(handler);
	}
}
