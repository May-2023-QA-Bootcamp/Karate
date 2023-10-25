package reqres;

import com.intuit.karate.junit5.Karate;

public class ReqResTestRunner {

	@Karate.Test
	Karate test() {
		return Karate.run().tags("@construct-path-example").relativeTo(getClass());
	}
}
