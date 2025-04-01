package com.resustainability.reisp.controller;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.VerticalAlignment;
import org.apache.poi.ss.util.WorkbookUtil;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFColor;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.resustainability.reisp.common.CommonMethods;
import com.resustainability.reisp.common.DateForUser;
import com.resustainability.reisp.constants.PageConstants;
import com.resustainability.reisp.model.User;
import com.resustainability.reisp.model.Project;
import com.resustainability.reisp.model.ProjectLocation;
import com.resustainability.reisp.model.RoleMapping;
import com.resustainability.reisp.model.User;
import com.resustainability.reisp.model.UserPaginationObject;
import com.resustainability.reisp.service.UserService;
import com.resustainability.reisp.controller.LoginController;
import com.resustainability.reisp.dao.UserDao;
@Controller
public class LoginController {
	@InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
    } 
	Logger logger = Logger.getLogger(LoginController.class);
	@Autowired
	UserService service;
	
	@Autowired
	UserService service2;

	@Value("${Logout.Message}")
	private String logOutMessage;
	
	@Value("${Login.Form.Invalid}")
	public String invalidUserName;

	@Value("${record.dataexport.success}")
	public String dataExportSucess;
	
	@Value("${record.dataexport.invalid.directory}")
	public String dataExportInvalid;
	
	@Value("${record.dataexport.error}")
	public String dataExportError;
	
	@Value("${record.dataexport.nodata}")
	public String dataExportNoData;
	
	@Value("${template.upload.common.error}")
	public String uploadCommonError;
	
	@Value("${template.upload.formatError}")
	public String uploadformatError;
	
	@Value("${common.error.message}")
	public String commonError;
	
	@RequestMapping(value = "/", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView basePage(@ModelAttribute User user, HttpSession session,HttpServletRequest request) {
		ModelAndView model = new ModelAndView(PageConstants.login);
		List<User> objsList = null;
		try {
			objsList = service.getCentersForUser(user);
			model.addObject("objsList", objsList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	

	@RequestMapping(value = "/irm-add-c", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView AddC(@ModelAttribute User user, HttpSession session,HttpServletRequest request) {
		ModelAndView model = new ModelAndView(PageConstants.cAdd);
		List<User> regType = null;
		List<User> wardType = null;
		List<User> zoneType = null;
		List<User> circleType = null;
		List<User> locType = null;
		List<User> clusterType = null;
		try {
			regType = service.getRegtypeForUser(user);
			model.addObject("regType", regType);
			
			wardType = service.getWardtypeForUser(user);
			model.addObject("wardType", wardType);
			
			zoneType = service.getZonetypeForUser(user);
			model.addObject("zoneType", zoneType);
			
			circleType = service.getCircletypeForUser(user);
			model.addObject("comType", circleType);
			
			locType = service.getLoctypeForUser(user);
			model.addObject("locType", locType);
			
			clusterType = service.getClusterypeForUser(user);
			model.addObject("clusterType", clusterType);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/c-submit", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView UserSubmit(@ModelAttribute User obj,RedirectAttributes attributes,HttpSession session) {
		boolean flag = false;
		String userId = null;
		String userName = null;
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName("redirect:/compliants");
			userId = (String) session.getAttribute("UserId");
			userName = (String) session.getAttribute("USER_NAME");
			obj.setUser_id(userId);
			obj.setUser_name(userName);
			String email = (String) session.getAttribute("EmailId");
			obj.setCreatedBy(userId);
			flag = service.CSubmit(obj);
			if(flag == true) {
				attributes.addFlashAttribute("success", "Record Created Succesfully.");
			}
			else {
				attributes.addFlashAttribute("error"," Submiting Record is failed. Try again.");
			}
		} catch (Exception e) {
			attributes.addFlashAttribute("error"," Submiting Record is failed. Try again.");
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/login", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView login(@ModelAttribute User user, HttpSession session,HttpServletRequest request,RedirectAttributes attributes) {
		ModelAndView model = new ModelAndView(PageConstants.login);
		User userDetails = null;
		try {
			if(!StringUtils.isEmpty(user) && !StringUtils.isEmpty(user.getUserId())&& !StringUtils.isEmpty(user.getPassword())){
				userDetails = service.validateUser(user);
				if(!StringUtils.isEmpty(userDetails)) {
					//if((userDetails.getSession_count()) == 0) {
						model.setViewName("redirect:/home");
						model = new ModelAndView(PageConstants.dashboardAdmin);
						session.setAttribute("user", userDetails);
						session.setAttribute("UserId", userDetails.getUserId());
						session.setAttribute("USER_NAME", userDetails.getUserName());
						session.setAttribute("DisplayName", userDetails.getDisplayName());
						session.setAttribute("EmailId", userDetails.getEmailId());
						session.setAttribute("RoleTypeId", userDetails.getRoleTypeId());
						attributes.addFlashAttribute("welcome", "welcome "+userDetails.getUserName());
					
				}else{
					model.addObject("invalidUser",invalidUserName);
					model.setViewName(PageConstants.login);
					
					List<User> objsList = service.getCentersForUser(user);
					model.addObject("objsList", objsList);
					
					model.addObject("email", user.getEmailId());
					model.addObject("name", user.getUserName());
				}
			}else {
				model.addObject("message", "");
				model.setViewName(PageConstants.login);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model; 
	}
		
	@RequestMapping(value = "/home", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView user(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = null;
		String userId = null;
		String userName = null;
		String role = null;
		List<User> companiesList = null;
		try {   
			userId = (String) session.getAttribute("UserId");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("RoleTypeId");
			String email = (String) session.getAttribute("EmailId");
			User uBoj = new User();
			uBoj.setEmail_id(email);
			user.setUserId(userId);
			user.setRole(role);
			model = new ModelAndView(PageConstants.dashboardAdmin);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/compliants", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView compliants(@ModelAttribute User user, HttpSession session,HttpServletRequest request) {
		ModelAndView model = new ModelAndView(PageConstants.compliants);
		List<User> objsList = null;
		try {
			objsList = service.getCentersForUser(user);
			model.addObject("objsList", objsList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/compliants-history", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView compliantsHistory(@ModelAttribute User user, HttpSession session,HttpServletRequest request) {
		ModelAndView model = new ModelAndView(PageConstants.compliantsHistory);
		List<User> objsList = null;
		try {
			objsList = service.getCHistory(user);
			model.addObject("objsList", objsList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/ajax/getcomplaintTypeIdFilterList", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User> getcomplaintTypeIdFilterList(@ModelAttribute User obj,HttpSession session) {
		List<User> departments = null;
		String userId = null;
		String userName = null;
		String role = null;
		try {
			userId = (String) session.getAttribute("UserId");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("RoleTypeId");
			if(!StringUtils.isEmpty(obj.getTransactionDate())) {
				if(obj.getTransactionDate().contains(",")) {
					String [] dates = obj.getRegistrtionTypeId().split(",");
					obj.setFrom_date(dates[0].trim());
					obj.setTo_date(dates[1].trim());
				}else {
					obj.setFrom_date(obj.getTransactionDate());
				}
			}
			obj.setRole(role);
			departments = service.getcomplaintTypeIdFilterList(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getcomplaintTypeIdFilterList : " + e.getMessage());
		}
		return departments;
	}
	
	@RequestMapping(value = "/ajax/getComplaintFilterListFromcomplaintTypeId", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User> getComplaintFilterListFromcomplaintTypeId(@ModelAttribute User obj,HttpSession session) {
		List<User> departments = null;
		String userId = null;
		String userName = null;
		String role = null;
		try {
			userId = (String) session.getAttribute("UserId");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("RoleTypeId");
			if(!StringUtils.isEmpty(obj.getTransactionDate())) {
				if(obj.getTransactionDate().contains(",")) {
					String [] dates = obj.getRegistrtionTypeId().split(",");
					obj.setFrom_date(dates[0].trim());
					obj.setTo_date(dates[1].trim());
				}else {
					obj.setFrom_date(obj.getTransactionDate());
				}
			}
			obj.setRole(role);
			departments = service.getComplaintFilterListFromcomplaintTypeId(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getComplaintFilterListFromcomplaintTypeId : " + e.getMessage());
		}
		return departments;
	}
	
	@RequestMapping(value = "/ajax/getLoctypeForUser", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User> getLoctypeForUser(@ModelAttribute User obj,HttpSession session) {
		List<User> departments = null;
		String role = null;
		try {
			departments = service.getLoctypeForUser(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getLoctypeForUser : " + e.getMessage());
		}
		return departments;
	}
	
	@RequestMapping(value = "/ajax/getWardtypeForUser", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User> getWardtypeForUser(@ModelAttribute User obj,HttpSession session) {
		List<User> departments = null;
		String role = null;
		try {
			departments = service.getWardtypeForUser(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getWardtypeForUser : " + e.getMessage());
		}
		return departments;
	}
	
	@RequestMapping(value = "/ajax/getcomplaintStatusIdFilterListFromcomplaintTypeId", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User> getcomplaintStatusIdFilterListFromcomplaintTypeId(@ModelAttribute User obj,HttpSession session) {
		List<User> departments = null;
		String userId = null;
		String userName = null;
		String role = null;
		try {
			userId = (String) session.getAttribute("UserId");
			userName = (String) session.getAttribute("USER_NAME");
			role = (String) session.getAttribute("RoleTypeId");
			if(!StringUtils.isEmpty(obj.getTransactionDate())) {
				if(obj.getTransactionDate().contains(",")) {
					String [] dates = obj.getRegistrtionTypeId().split(",");
					obj.setFrom_date(dates[0].trim());
					obj.setTo_date(dates[1].trim());
				}else {
					obj.setFrom_date(obj.getTransactionDate());
				}
			}
			obj.setRole(role);
			departments = service.getcomplaintStatusIdFilterListFromcomplaintTypeId(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getcomplaintStatusIdFilterListFromcomplaintTypeId : " + e.getMessage());
		}
		return departments;
	}
	
	@RequestMapping(value = "/ajax/getCList", method = { RequestMethod.POST, RequestMethod.GET })
	public void getUsersList(@ModelAttribute User obj, HttpServletRequest request,
			HttpServletResponse response, HttpSession session) throws IOException {
		PrintWriter pw = null;
		//JSONObject json = new JSONObject();
		String json2 = null;
		String userId = null;
		String userName = null;
		try {
			userId = (String) session.getAttribute("UserId");
			userName = (String) session.getAttribute("USER_NAME");

			pw = response.getWriter();
			//Fetch the page number from client
			Integer pageNumber = 0;
			Integer pageDisplayLength = 0;
			if (null != request.getParameter("iDisplayStart")) {
				pageDisplayLength = Integer.valueOf(request.getParameter("iDisplayLength"));
				pageNumber = (Integer.valueOf(request.getParameter("iDisplayStart")) / pageDisplayLength) + 1;
			}
			//Fetch search parameter
			String searchParameter = request.getParameter("sSearch");

			//Fetch Page display length
			pageDisplayLength = Integer.valueOf(request.getParameter("iDisplayLength"));

			List<User> budgetList = new ArrayList<User>();

			//Here is server side pagination logic. Based on the page number you could make call 
			//to the data base create new list and send back to the client. For demo I am shuffling 
			//the same list to show data randomly
			int startIndex = 0;
			int offset = pageDisplayLength;

			if (pageNumber == 1) {
				startIndex = 0;
				offset = pageDisplayLength;
				budgetList = createPaginationData(startIndex, offset, obj, searchParameter);
			} else {
				startIndex = (pageNumber * offset) - offset;
				offset = pageDisplayLength;
				budgetList = createPaginationData(startIndex, offset, obj, searchParameter);
			}

			//Search functionality: Returns filtered list based on search parameter
			//budgetList = getListBasedOnSearchParameter(searchParameter,budgetList);

			int totalRecords = getTotalRecords(obj, searchParameter);

			UserPaginationObject personJsonObject = new UserPaginationObject();
			//Set Total display record
			personJsonObject.setiTotalDisplayRecords(totalRecords);
			//Set Total record
			personJsonObject.setiTotalRecords(totalRecords);
			personJsonObject.setAaData(budgetList);

			Gson gson = new GsonBuilder().setPrettyPrinting().create();
			json2 = gson.toJson(personJsonObject);
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(
					"getUsersList : User Id - " + userId + " - User Name - " + userName + " - " + e.getMessage());
		}

		pw.println(json2);
	}

	/**
	 * @param searchParameter 
	 * @param activity 
	 * @return
	 */
	public int getTotalRecords(User obj, String searchParameter) {
		int totalRecords = 0;
		try {
			totalRecords = service.getTotalRecordsC(obj, searchParameter);
		} catch (Exception e) {
			logger.error("getTotalRecords : " + e.getMessage());
		}
		return totalRecords;
	}

	/**
	 * @param pageDisplayLength
	 * @param offset 
	 * @param activity 
	 * @param clientId 
	 * @return
	 */
	public List<User> createPaginationData(int startIndex, int offset, User obj, String searchParameter) {
		List<User> objList = null;
		try {
			objList = service.getCList(obj, startIndex, offset, searchParameter);
		} catch (Exception e) {
			logger.error("createPaginationData : " + e.getMessage());
		}
		return objList;
	}
	@RequestMapping(value = "/logout", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView logout(HttpSession session,HttpServletRequest request,HttpServletResponse response,RedirectAttributes attributes){
		ModelAndView model = new ModelAndView();
		User user = new User();
		try {
			user.setUserId((String) session.getAttribute("UserId"));
			user.setId((String) session.getAttribute("ID"));
			session.invalidate();
			//model.addObject("success", logOutMessage);
			model.setViewName("redirect:/login");
		} catch (Exception e) {
			logger.fatal("logut() : "+e.getMessage());
		}
		return model;
	}
	
	@RequestMapping(value = "/export-complaints", method = {RequestMethod.GET,RequestMethod.POST})
	public void exportComplaints(HttpServletRequest request, HttpServletResponse response,HttpSession session,@ModelAttribute User obj,RedirectAttributes attributes){
		ModelAndView view = new ModelAndView(PageConstants.user);
		List<User> dataList = new ArrayList<User>();
		String userId = null;String userName = null;
		try {
			userId = (String) session.getAttribute("UserId");userName = (String) session.getAttribute("USER_NAME");
			view.setViewName("redirect:/complaints");
			int time = obj.getTime_period();
			if(!StringUtils.isEmpty(obj.getTimePeriod())) {
				time = Integer.parseInt(obj.getTimePeriod());
			}
			
			obj.setTime_period(time);
			dataList = service.getCList(obj); 
			if(dataList != null && dataList.size() > 0){
	            XSSFWorkbook  workBook = new XSSFWorkbook ();
	            XSSFSheet sheet = workBook.createSheet(WorkbookUtil.createSafeSheetName("Complaints"));
		        workBook.setSheetOrder(sheet.getSheetName(), 0);
		        
		        byte[] blueRGB = new byte[]{(byte)0, (byte)176, (byte)240};
		        byte[] yellowRGB = new byte[]{(byte)255, (byte)192, (byte)0};
		        byte[] greenRGB = new byte[]{(byte)146, (byte)208, (byte)80};
		        byte[] redRGB = new byte[]{(byte)255, (byte)0, (byte)0};
		        byte[] whiteRGB = new byte[]{(byte)255, (byte)255, (byte)255};
		        
		        boolean isWrapText = true;boolean isBoldText = true;boolean isItalicText = false; int fontSize = 11;String fontName = "Times New Roman";
		        CellStyle blueStyle = cellFormating(workBook,blueRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        CellStyle yellowStyle = cellFormating(workBook,yellowRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        CellStyle greenStyle = cellFormating(workBook,greenRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        CellStyle redStyle = cellFormating(workBook,redRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        CellStyle whiteStyle = cellFormating(workBook,whiteRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        
		        CellStyle indexWhiteStyle = cellFormating(workBook,whiteRGB,HorizontalAlignment.LEFT,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        
		        isWrapText = true;isBoldText = false;isItalicText = false; fontSize = 9;fontName = "Times New Roman";
		        CellStyle sectionStyle = cellFormating(workBook,whiteRGB,HorizontalAlignment.LEFT,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		      
	            XSSFRow headingRow = sheet.createRow(1);
	        	String headerString = "#,Zone,Cluster,Ward,Area,Location,Complaint Status,Citizen Name,Citizen Contact No,Citizen Email Id,Complaint Address,"
	        			+ "Complaint Closed Date & Time,History,Update";
	            String[] firstHeaderStringArr = headerString.split("\\,");
	            
	            for (int i = 0; i < firstHeaderStringArr.length; i++) {		        	
		        	Cell cell = headingRow.createCell(i);
			        cell.setCellStyle(greenStyle);
					cell.setCellValue(firstHeaderStringArr[i]);
				}
	            
	            short rowNo = 3,sNo = 1;
	            for (User obj1 : dataList) {
	                XSSFRow row = sheet.createRow(rowNo);
	                int c = 0;
	            
	                Cell cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue(sNo++);
				
					cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue(obj1.getZoneName());
					
					cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue(obj1.getClusterName());
					
					cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue(obj1.getWardName());
					
					cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue(obj1.getAreaId());
					
				    cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue(obj1.getLocationName());
					
					
				    cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue(obj1.getComplaintStatusName());
					
					
					
				    cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue(obj1.getCitizenName());
					
					
					
				    cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue(obj1.getMobileNo());
					
					
					
				    cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue(obj1.getCitizenEmailId());
					
					
					
				    cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue(obj1.getComplaintAddress());
					
					
					
				    cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue(obj1.getClosingTime());
					
					
					
				    cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue("");
					
					
					
				    cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue("");
			
	
					
	                rowNo++;
	            }
	            for(int columnIndex = 1; columnIndex < firstHeaderStringArr.length; columnIndex++) {
	        		sheet.setColumnWidth(columnIndex, 25 * 200);
				}
                DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd-HHmmss");
                Date date = new Date();
                String fileName = "Complaints_"+dateFormat.format(date);
                
	            try{
	                /*FileOutputStream fos = new FileOutputStream(fileDirectory +fileName+".xls");
	                workBook.write(fos);
	                fos.flush();*/
	            	
	               response.setContentType("application/.csv");
	 			   response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
	 			   response.setContentType("application/vnd.ms-excel");
	 			   // add response header
	 			   response.addHeader("Content-Disposition", "attachment; filename=" + fileName+".xlsx");
	 			   
	 			    //copies all bytes from a file to an output stream
	 			   workBook.write(response.getOutputStream()); // Write workbook to response.
		           workBook.close();
	 			    //flushes output stream
	 			    response.getOutputStream().flush();
	            	
	                
	                attributes.addFlashAttribute("success",dataExportSucess);
	            	//response.setContentType("application/vnd.ms-excel");
	            	//response.setHeader("Content-Disposition", "attachment; filename=filename.xls");
	            	//XSSFWorkbook  workbook = new XSSFWorkbook ();
	            	// ...
	            	// Now populate workbook the usual way.
	            	// ...
	            	//workbook.write(response.getOutputStream()); // Write workbook to response.
	            	//workbook.close();
	            }catch(FileNotFoundException e){
	                //e.printStackTrace();
	                attributes.addFlashAttribute("error",dataExportInvalid);
	            }catch(IOException e){
	                //e.printStackTrace();
	                attributes.addFlashAttribute("error",dataExportError);
	            }
         }else{
        	 attributes.addFlashAttribute("error",dataExportNoData);
         }
		}catch(Exception e){	
			e.printStackTrace();
			logger.error("exportUser : : User Id - "+userId+" - User Name - "+userName+" - "+e.getMessage());
			attributes.addFlashAttribute("error", commonError);			
		}
		//return view;
	}
	

	private CellStyle cellFormating(XSSFWorkbook workBook,byte[] rgb,HorizontalAlignment hAllign, VerticalAlignment vAllign, boolean isWrapText,boolean isBoldText,boolean isItalicText,int fontSize,String fontName) {
		CellStyle style = workBook.createCellStyle();
		//Setting Background color  
		//style.setFillBackgroundColor(IndexedColors.AQUA.getIndex());
		style.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		
		if (style instanceof XSSFCellStyle) {
		   XSSFCellStyle xssfcellcolorstyle = (XSSFCellStyle)style;
		   xssfcellcolorstyle.setFillForegroundColor(new XSSFColor(rgb, null));
		}
		//style.setFillPattern(FillPatternType.ALT_BARS);
		style.setBorderBottom(BorderStyle.MEDIUM);
		style.setBorderTop(BorderStyle.MEDIUM);
		style.setBorderLeft(BorderStyle.MEDIUM);
		style.setBorderRight(BorderStyle.MEDIUM);
		style.setAlignment(hAllign);
		style.setVerticalAlignment(vAllign);
		style.setWrapText(isWrapText);
		
		Font font = workBook.createFont();
        //font.setColor(HSSFColor.HSSFColorPredefined.WHITE.getIndex());
        font.setFontHeightInPoints((short)fontSize);  
        font.setFontName(fontName);  //"Times New Roman"
        
        font.setItalic(isItalicText); 
        font.setBold(isBoldText);
        // Applying font to the style  
        style.setFont(font); 
        
        return style;
	}
	
	@RequestMapping(value = "/Masters/Zone", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView MastersZone(@ModelAttribute User user, HttpSession session,HttpServletRequest request) {
		ModelAndView model = new ModelAndView(PageConstants.zone);
		List<User> objsList = null;
		try {
			objsList = service.getCentersForUser(user);
			model.addObject("objsList", objsList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
}
