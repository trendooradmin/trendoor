package com.trendoor.controllers;

import java.util.ArrayList;
import java.util.List;

import com.trendoor.vo.Post;

public class TrendingTerms {

	String place;
	
	List<String> trendList;
	
	
	public String getPlace() {
		return place;
	}


	public void setPlace(String place) {
		this.place = place;
	}


	public List<String> getTrendList() {
		return trendList;
	}


	public void setTrendList(List<String> trendList) {
		this.trendList = trendList;
	}


	public TrendingTerms() {
	} 
	
}