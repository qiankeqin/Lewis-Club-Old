
package com.daymooc.fcms.common.kit;

import com.jfinal.log.Log;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;
import com.jfinal.kit.StrKit;

/**
 * 邮件发送工具类
 */
public class EmailKit {
	
	private static final Log log = Log.getLog(EmailKit.class);
	
	public static String sendEmail(String fromEmail, String toEmail, String title, String content) {
		return sendEmail(null, fromEmail, null, toEmail, title, content);
	}
	
	public static String sendEmail(String emailServer, String fromEmail, String password, String toEmail, String title, String content) {
		
		SimpleEmail email=new SimpleEmail();
		if (StrKit.notBlank(emailServer)) {
			email.setHostName(emailServer.trim());
		}
		else {
			// 默认使用本地 postfix 发送，这样就可以将postfix 的 mynetworks 配置为 127.0.0.1 或 127.0.0.0/8 了
			email.setHostName("127.0.0.1");
		}
			
		// 如果密码为空，则不进行认证
		if (StrKit.notBlank(password)) {
			email.setAuthentication(fromEmail, password);
		}
		
		email.setCharset("utf-8");
		try {
			email.addTo(toEmail);
			email.setFrom(fromEmail);
			email.setSubject(title);
			email.setMsg(content);
			return email.send();
		} catch (EmailException e) {
			log.error(e.getMessage(), e);
			throw new RuntimeException(e);
		}
	}

}
		
		
	
	


