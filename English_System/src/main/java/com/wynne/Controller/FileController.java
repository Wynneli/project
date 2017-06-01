package com.wynne.Controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.util.Streams;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.wynne.Entity.Download;
import com.wynne.Serivce.IDownloadService;
import com.wynne.Utils.HandleSize;

@Controller
@RequestMapping("/file")
public class FileController {

	@Autowired
	private IDownloadService downloadService;

	private final static String SUCCESS="success";

	private final static String FAILURE="failure";

	private final static String file_Path="G:\\毕设\\temp\\Download\\test\\";

	private final static String mp3_Path="G:\\毕设\\temp\\Download\\MP3\\";

	@RequestMapping("/show_listeninfo")
	public ModelAndView show_listeninfo(){
		ModelAndView modelAndView=new ModelAndView();
		List<Download> list=new ArrayList<Download>();
		list=downloadService.findAll2("mp3");
		modelAndView.addObject("listen_list",list);
		modelAndView.setViewName("admin4/listen");
		return modelAndView;
	}

	@RequestMapping("/show_testinfo")
	public ModelAndView show_testinfo(){
		ModelAndView modelAndView=new ModelAndView();
		List<Download> list=new ArrayList<Download>();
		list=downloadService.findAll2("doc");
		modelAndView.addObject("listen_list",list);
		modelAndView.setViewName("admin4/test2");
		return modelAndView;
	}

	@RequestMapping("/show_docinfo")
	public ModelAndView show_docinfo(){
		ModelAndView modelAndView=new ModelAndView();
		List<Download> list=new ArrayList<Download>();
		list=downloadService.findAll2("docx");
		modelAndView.addObject("listen_list",list);
		modelAndView.setViewName("admin4/doc");
		return modelAndView;
	}


	@RequestMapping("/show_Allfile")
	public String show_Allfile(HttpSession session){
		List<Download> download_list=new ArrayList<Download>();
		List<Download> download_list2=new ArrayList<Download>();
		List<Download> download_list3=new ArrayList<Download>();
		download_list=downloadService.findAll2("mp3");
		download_list2=downloadService.findAll2("doc");
		download_list3=downloadService.findAll2("docx");
		session.setAttribute("download_list", download_list);
		session.setAttribute("download_list2", download_list2);
		session.setAttribute("download_list3", download_list3);
		return "redirect:/Page/more/download.jsp";
	}

	@RequestMapping("/editListen/{downloadId}")
	public ModelAndView editListen(@PathVariable("downloadId") int fileid){
		System.err.println("editListen");
		ModelAndView modelAndView=new ModelAndView();
		Download download=new Download();
		download=downloadService.findDownloadByPrimaryKey(fileid);
		System.out.println(download.toString());
		modelAndView.addObject("download",download);
		modelAndView.setViewName("admin4/editlisten");
		return modelAndView;
	}



	@RequestMapping("/deletelistening")
	public @ResponseBody Object deletelistening(HttpServletRequest request){
		JSONObject jsonObject=new JSONObject();
		int count=0;
		String Idstring=request.getParameter("fileid");
		int fileid=Integer.parseInt(Idstring);
		if(fileid>0){
			count=downloadService.deletedownload(fileid);
		}
		if(count==1){
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}

	@RequestMapping("/editAndsave")
	public @ResponseBody Object editAndsave(@RequestBody Download download ){
		JSONObject jsonObject=new JSONObject();
		int count=0;
		if(download!=null){
			count=downloadService.Update2(download);
		}
		if(count==1){
			download=downloadService.findDownloadByPrimaryKey(download.getFileid());
			jsonObject.put("attr", SUCCESS);
			jsonObject.put("download", download);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}

	@RequestMapping("/Brushlisten")
	public @ResponseBody Object Brushlisten(@RequestBody Download download ){
		JSONObject jsonObject=new JSONObject();
		List<Download> list=new ArrayList<Download>();
		if(download!=null){
			list=downloadService.findAllOption2(download.getFiletype(), download.getFiletypes());
		}
		if(list.size()!=0){
			jsonObject.put("attr", SUCCESS);
			jsonObject.put("list", list);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}

	@RequestMapping("/BatchdeleteDownload")
	public @ResponseBody Object BatchdeleteAnswer(HttpServletRequest request){
		JSONObject jsonObject=new JSONObject();
//		List<Download> list=new ArrayList<Download>();
		int counts=0;
		String FileIdList=request.getParameter("FileIdList");
		String[] items=FileIdList.split(",");
		for(int i=0;i<items.length;i++){
			int count=downloadService.deletedownload(Integer.parseInt(items[i]));
			if(count==1){
				counts=counts+1;
			}
		}
		if(counts==items.length){
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}

	@RequestMapping("/uploadfile/{fileid}" )
	public ModelAndView uploadfile(@RequestParam(value="file") MultipartFile file,HttpServletRequest request,@PathVariable("fileid") int fileid){
		ModelAndView modelAndView=new ModelAndView();
		Download download=downloadService.findDownloadByPrimaryKey(fileid);
		String file_Path=download.getFilepath();
		file_Path=file_Path.substring(5,file_Path.length());
		System.out.println("G:/毕设/temp"+file_Path);
		System.out.println(fileid);
		String originalname=file.getOriginalFilename();
		System.out.println(originalname);
		long size=file.getSize();
		String filesize=HandleSize.getPrintSize(size);
		download.setFilesize(filesize);
		System.out.println(filesize);
		if(!file.isEmpty()){
			try {
				Streams.copy(file.getInputStream(),new FileOutputStream("G:/毕设/temp"+file_Path),true);
				downloadService.Update(download);
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		modelAndView.setViewName("admin4/admin");
		return modelAndView;
	}

	@RequestMapping("/downloadfile")
	public void downloadfile(@RequestParam("filenames") String filenames,@RequestParam("fileid") int fileid,@RequestParam("file3") int filesum,HttpServletRequest request,HttpServletResponse response) throws Exception{
		String fileNamePath=null;
		String file = new String(filenames.getBytes("iso-8859-1"),"utf-8");//用request获取URL传递的中文参数
		Download download=new Download();
		download.setFiledownloadsum(filesum+1);
		download.setFileid(fileid);
		if(file.substring(file.lastIndexOf("."),file.length()).equals(".mp3")){
			fileNamePath =mp3_Path+file;
			response.setContentType("audio/mp3"); 
		}else{
			fileNamePath =file_Path+file;
			response.setContentType("application/msword"); 
		}


		// 读取要下载的文件，保存到文件输入流  
		InputStream bis = new BufferedInputStream(new FileInputStream(new File(fileNamePath)));  
		// 设置响应头，控制浏览器下载该文件  

		response.setHeader("Content-disposition", "attachment;filename="+new String(file.getBytes("utf-8"),"ISO-8859-1"));

		// 创建输出流  
		//		BufferedOutputStream out2 = new BufferedOutputStream(response.getOutputStream());  
		OutputStream out2 = response.getOutputStream();  
		// 创建缓冲区  
		int len = 0;  
		// 循环将输入流中的内容读取到缓冲区当中  
		while ((len = bis.read())!=-1) {  
			// 输出缓冲区的内容到浏览器，实现文件下载  
			out2.write(len);  
			out2.flush(); 
		}  
		// 关闭文件输入流  
		bis.close();  
		// 关闭输出流  
		out2.close();
		downloadService.Update(download);
	} 


	@RequestMapping("/test")
	public @ResponseBody Object test(HttpServletRequest request) throws IOException, ServletException{
		JSONObject jsonObject=new JSONObject();
		//		String teString=request.getParameter("filetime");
		//		String file=request.getParameter("file");
		System.out.println(request.getParameter("filename"));
		Part part=request.getPart("file");
		System.out.println(part.getName());
		return jsonObject;
	}
}