package com.karate;

import com.intuit.karate.junit5.Karate;

public class Runner {

	@Karate.Test
	Karate testAll() {
        return Karate.run("classpath:com/karate/FirstTest.feature").relativeTo(getClass());
	}
}
