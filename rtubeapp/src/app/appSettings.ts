export class AppSettings{

	public static URL_BASE 	 	 = "http://localhost:4200/";
	public static IMAGE_BASE 	 = "http://localhost/CIIMS/api/";
 	public static API_BASE 		 = "http://localhost/CIIMS/api/";  
	public static IMG_BASE 		 = "http://localhost/CIIMS/api/assets/";
	public static DOC_BASE 		 = "http://localhost/CIIMS/api/assets/customer_documents/";
	public static ORDER_DOC_BASE = "http://localhost/CIIMS/api/assets/order_documents/";
		 
	
	//User Login Api Starts here
	public static Userlogin 	= AppSettings.API_BASE + "auth/commonlogin";
	public static Changepassword 	= AppSettings.API_BASE + "auth/change_password";
	public static Resetpassword 	= AppSettings.API_BASE + "auth/reset_password";
	public static Uservalidate 	= AppSettings.API_BASE + "auth/uservalidate";
	
	//User Login Api Ends here
	
	
	//User CRUD
	public static commonUserApi 		= AppSettings.API_BASE + "user/userupdate";
	public static edituser 				= AppSettings.API_BASE + "user/getuserbyid";	
	public static uploadprofileimage	= AppSettings.API_BASE + "user/imageupload";	
	public static deleteuser 			= AppSettings.API_BASE + "user/deleteuser";
	public static getMarketlistByuser 	= AppSettings.API_BASE + "user/getmarketlistbyuser";
	public static updateUserData        = AppSettings.API_BASE + "user/updateuserdata"; 
	public static updateUserMarketlistApi   = AppSettings.API_BASE + "user/updateusermarkets"; 
	public static getuserlogApi 	=	AppSettings.API_BASE + "user/getuserlog"; 
	
	
}
 
