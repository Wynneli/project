package com.wynne.Utils;

import org.junit.Test;

public class testChinese {
   @Test
   public void test(){
	   System.out.println(JudgeChinese.isChinese("手动23倒海防守打法"));
   }
   
   public void test2(){
	   System.out.println(JudgeChinese.isChinese('的'));
   }
}
