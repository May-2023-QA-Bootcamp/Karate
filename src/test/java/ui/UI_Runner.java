package ui;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class UI_Runner {

	@Test
	Karate test() {
		return Karate.run("ui.feature").relativeTo(getClass());
	}
}
