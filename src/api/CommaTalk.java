package api;

import java.net.URL;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;

import service.ILogService;
import service.IMemberService;

public class CommaTalk {

	
	@Autowired
	private ILogService lService;
	
	@Autowired
	private IMemberService mService;
	
	private String msg;
	
	private Date date;
	
	private String tag;
	
	private String apiKey;
	
	private String url;
	
	
}
