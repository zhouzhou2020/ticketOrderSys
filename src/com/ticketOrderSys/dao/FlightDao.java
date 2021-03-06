package com.ticketOrderSys.dao;

import java.util.List;

import com.ticketOrderSys.pojo.Flight;
import com.ticketOrderSys.utils.Pager;

public interface FlightDao {

	void add(Flight flight);

	void modify(Flight flight);

	void remove(Flight flight);

	Flight find(Integer fid);

	List<Flight> find();

	Pager<Flight> find(Integer page, Integer rows, String sort, String order, String fromCity, String toCity,
			String name, String fromTime, Integer flightType);
}
