package com.wynne.Utils;

import org.junit.Test;

public class HandlepageTest {

	@Test
	public void test() {
		System.out.println(Handlepage.handlepage(20));
	}

	
	@Test
	public void test1(){
		System.out.println(Handlepage.handlepagebyCetid("cet4_0028"));
	}
	
	@Test
	public void test2(){
		System.out.println(Handlepage.handlepageoff(317));
	}
}
