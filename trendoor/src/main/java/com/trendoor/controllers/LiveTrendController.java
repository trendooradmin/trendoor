package com.trendoor.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.trendoor.processors.PostSearchProcessor;
import com.trendoor.vo.Location;
import com.trendoor.vo.PostData;

@Controller
@RequestMapping("/trend/")
public class LiveTrendController {

	@RequestMapping(value = "{latLong}", method = RequestMethod.GET)
	public @ResponseBody
	TrendingTerms getTrend(@PathVariable("latLong") String latLong){ 
		
		Location location = new Location();
		TrendingTerms trendingTerms= new TrendingTerms();
		PostSearchProcessor searchProcessor = new PostSearchProcessor();
		
		if(StringUtils.hasText(latLong) && latLong.trim().contains(",")){
			location.setLoc(latLong);
		}else{
			location.setLoc("40.714224,-73.961452");
		}
		
		try{
			trendingTerms = searchProcessor.getTrends(location);
		}catch(Exception e){
			
		}
		
		return trendingTerms;
	}
	
	
}