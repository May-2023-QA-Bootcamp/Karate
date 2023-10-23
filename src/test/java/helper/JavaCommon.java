package helper;

public class JavaCommon {

	public static String getSystemUser() {
		return System.getProperty("user.name");
	}
	
	public String getOSName() {
		return System.getProperty("os.name");
	}
}
