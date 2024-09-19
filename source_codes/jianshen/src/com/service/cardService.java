package com.service;

import java.util.List;

import com.dao.TCardDAO;

public class cardService
{
	private TCardDAO cardDAO;

	@SuppressWarnings("rawtypes")
	public List findAllCard()
	{
		return cardDAO.findAll();
	}
	
	public TCardDAO getCardDAO()
	{
		return cardDAO;
	}

	public void setCardDAO(TCardDAO cardDAO)
	{
		this.cardDAO = cardDAO;
	}
	

}
