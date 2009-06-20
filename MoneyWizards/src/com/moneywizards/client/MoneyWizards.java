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
public class MoneyWizards implements EntryPoint {
	/**
	 * Dollar formatter
	 */
	final NumberFormat nf = NumberFormat.getFormat("$#,##0");

	/**
	 * This is the entry point method.
	 */
	public void onModuleLoad() {
		final Button sendButton = new Button("Dinghy or Yacht?");
		final TextBox ageField = new TextBox();
		final TextBox netWorthField = new TextBox();
		final TextBox investField = new TextBox();
		final TextBox rateField = new TextBox();

		// age
		ageField.setText("20");
		ageField.setName("Age");
		ageField.setTitle("Please enter age 0-99");
		ageField.setWidth("20");
		ageField.setFocus(true);
		ageField.setMaxLength(2);

		// initial net worth
		netWorthField.setText("0");
		netWorthField.setTitle("Initial Net Worth -9999999999 to 99999999999");
		netWorthField.setWidth("100");
		netWorthField.setMaxLength(11);

		// rate of return
		rateField.setText(".06");
		rateField.setTitle("Annual Rate of Return -.5 to .5");
		rateField.setWidth("30");
		rateField.setMaxLength(4);

		// annual investment
		investField.setText("5000");
		investField.setTitle("Annual Investment -9999999 to 99999999");
		investField.setWidth("100");
		investField.setMaxLength(8);

		// We can add style names to widgets
		sendButton.addStyleName("sendButton");

		// Add the everything to their containers in the RootPanel
		// Use RootPanel.get() to get the entire body element
		RootPanel.get("ageFieldContainer").add(ageField);
		RootPanel.get("netWorthFieldContainer").add(netWorthField);
		RootPanel.get("rateFieldContainer").add(rateField);
		RootPanel.get("investFieldContainer").add(investField);
		RootPanel.get("sendButtonContainer").add(sendButton);

		// Focus the cursor on the name field when the app loads
		ageField.setFocus(true);
		ageField.selectAll();

		// Create a handler for the sendButton and nameField
		class MyHandler implements ClickHandler, KeyUpHandler {
			/**
			 * Send the name from the nameField to the server and wait for a
			 * response.
			 */
			private void calcNetWorth() {
				// sendButton.setEnabled(false);
				int _age = 20;
				if (ageField.getText() != null) {
					try {
						_age = Integer.valueOf(ageField.getText()).intValue();
					} catch (final Exception ex) {
						ex.printStackTrace();
					}
				}
				long _netWorth = 0;
				if (netWorthField.getText() != null) {
					try {
						_netWorth = Long.valueOf(netWorthField.getText())
								.longValue();
					} catch (final Exception ex) {
						ex.printStackTrace();
					}
				}
				long _invest = 5000;
				if (investField.getText() != null) {
					try {
						_invest = Long.valueOf(investField.getText())
								.longValue();
					} catch (final Exception ex) {
						ex.printStackTrace();
					}
				}
				float _rate = .06f;
				if (rateField.getText() != null) {
					try {
						_rate = Float.valueOf(rateField.getText()).floatValue();
					} catch (final Exception ex) {
						ex.printStackTrace();
					}
				}
				int row = 0;
				// Create flex table
				final FlexTable t = new FlexTable();
				t.setCellSpacing(5);
				t.setText(0, 0, "Age");
				t.setText(0, 1, "Net Worth");
				t.setText(0, 2, "Annual Return");
				RootPanel.get("resultsContainer").clear();
				RootPanel.get("resultsContainer").add(t);

				while (_age++ < 100) {
					final long annualReturn = (long) (_netWorth * _rate);
					_netWorth = _netWorth + annualReturn + _invest;
					t.setText(++row, 0, String.valueOf(_age));
					t.setText(row, 1, nf.format(_netWorth));
					t.setText(row, 2, nf.format(annualReturn));
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
		}

		// Add a handler to send the name to the server
		final MyHandler handler = new MyHandler();
		sendButton.addClickHandler(handler);
		ageField.addKeyUpHandler(handler);
		netWorthField.addKeyUpHandler(handler);
		investField.addKeyUpHandler(handler);
		rateField.addKeyUpHandler(handler);
	}
}