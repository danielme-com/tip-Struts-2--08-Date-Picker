package com.danielme.tips.struts2.tip8.actions;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.apache.commons.lang.StringUtils;

import com.opensymphony.xwork2.ActionSupport;


/**
 * 
 * @author danielme.com
 * 
 */
public class MainAction extends ActionSupport
{
	private static final long serialVersionUID = 33466065079709970L;

	private String dateString = "";
	
	public String execute()
	{
		return SUCCESS;
	}
	
	public String submitDate()
	{
		 SimpleDateFormat dateFormat = new SimpleDateFormat(getText("pattern"));

		 if (!StringUtils.isBlank(dateString))
		 {
			 if (dateString.length() != 10)
			 {
					addActionError(getText("error"));
					dateString = ""; 
			 }
			 else
			 {
				try
				{
					dateFormat.parse(dateString);				
				}
				catch (ParseException e)
				{
					addActionError(getText("error"));
					dateString = ""; 
				}
			 }
		}
		
		return SUCCESS;
	}	
	

	public String getDateString()
	{
		return dateString;
	}

	
	public void setDateString(String date)
	{
		dateString = date;
	}		

}
