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
@RequestMapping("/search/")
public class LiveSearchController {

	@RequestMapping(value = "{subject}/{twitter}/{instagram}/{vine}", method = RequestMethod.GET)
	public @ResponseBody
	SearchedPosts getLiveFeed(@PathVariable String subject,@PathVariable("twitter") boolean isTwitter, @PathVariable("instagram") boolean isInstagram, @PathVariable("vine") boolean isVine) {

		System.out.println("Request came for : "+subject);
		
		PostData postData = new PostData();
		
		postData.setSubject(subject);
		postData.setFromFacebook(false);
		postData.setFromInstagram(isInstagram);
		postData.setFromTwitter(isTwitter);
		postData.setFromVine(isVine);
		PostSearchProcessor searchProcessor = new PostSearchProcessor();
		SearchedPosts searchedPosts = new SearchedPosts();
		try {
			postData = searchProcessor.getPosts(postData);
		
			if(subject.indexOf("#") > -1){
				subject = subject.substring(1);
			}
			searchedPosts.setSubject(subject);
			searchedPosts.setPostList(postData.getPostList());
			
		}	catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return searchedPosts;

	}
	
}