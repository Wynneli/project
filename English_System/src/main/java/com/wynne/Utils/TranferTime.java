package com.wynne.Utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TranferTime {
	public static String change(Date commentTime) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String str=sdf.format(commentTime);
		return str;
	}

}
