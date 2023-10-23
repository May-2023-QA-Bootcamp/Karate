package unittest;

import com.intuit.karate.junit5.Karate;

public class UnitTestRunner {

	@Karate.Test
	Karate test() {
		return Karate.run().tags("@js-unit").relativeTo(getClass());
	}
}
