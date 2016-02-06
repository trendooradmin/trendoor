package com.trendoor.controllers;

import java.util.ArrayList;

import com.trendoor.vo.Post;

public class SearchedPosts {

	String subject;
	
	ArrayList<Post> postList;
	
	
	public String getSubject() {
		return subject;
	}


	public void setSubject(String subject) {
		this.subject = subject;
	}


	public ArrayList<Post> getPostList() {
		return postList;
	}


	public void setPostList(ArrayList<Post> postList) {
		this.postList = postList;
	}


	public SearchedPosts() {
	} 
	
}