package com.wynne.Controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.util.Streams;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.wynne.Entity.Download;
import com.wynne.Serivce.IDownloadService;
import com.wynne.Utils.SystemTime;

@Controller
@RequestMapping("/file")
public class FileUploadController {

	@Autowired
	private IDownloadService downloadService;

	private final static String SUCCESS="success";

	private final static String FAILURE="failure";

	private final static String Path="G:\\毕设\\temp\\Download\\file\\";

	@RequestMapping("uploadfile")
	public String uploadfile(@RequestParam("file") MultipartFile file,HttpSession session){
		Download download=new Download();
		String name=SystemTime.getTimeToFile();
		String originalname=file.getOriginalFilename();
		download.setFilepath("/file/temp/Download/file/"+SystemTime.getTimeToFile()+originalname);
		download.setFilename(SystemTime.getTimeToFile()+originalname);
		download.setFiletype("文本");
		download.setFiledownloadsum(0);
		long size=file.getSize();
		int count=downloadService.insertrecord(download);
		if(count==1){
			session.setAttribute("attr", "上传成功!");
			if(!file.isEmpty()){
				//			System.out.println("here");
				try {
					Streams.copy(file.getInputStream(),new FileOutputStream("G:\\毕设\\temp\\Download\\file\\"+name+file.getOriginalFilename()),true);
				} catch (FileNotFoundException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}else{
			session.setAttribute("attr", "上传失败！");
		}
		return  "redirect:/Page/other/info.jsp";
	}

		@RequestMapping("/downloadfile/{filename}")
		public void downloadfile(@PathVariable("filename") String filename,HttpServletRequest request,HttpServletResponse response) throws Exception{
			//下载的文件  
			System.out.println(filename);
			String file = new String(filename.getBytes("iso-8859-1"),"utf-8");//用request获取URL传递的中文参数
			System.out.println(file);
			String FileName=file.substring(14, file.length());
			System.out.println(FileName);
			System.out.println(file);
			String fileNamePath =Path+file;
			 //转码，免得文件名中文乱码  
	        System.out.println(fileNamePath);
			// 设置响应头，控制浏览器下载该文件  
			response.addHeader("Content-Disposition", "attachment;filename="+FileName);
			response.setContentType("application/x-download");
			// 读取要下载的文件，保存到文件输入流  
			 InputStream bis = new BufferedInputStream(new FileInputStream(new File(fileNamePath)));  
			// 创建输出流  
			BufferedOutputStream out2 = new BufferedOutputStream(response.getOutputStream());  
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
		} 

	@RequestMapping("/downloadfile2")
	public void downloadfile(HttpServletRequest request,HttpServletResponse response) throws Exception{
		//下载的文件  

		String file = new String(request.getParameter("filename").getBytes("iso-8859-1"),"utf-8");//用request获取URL传递的中文参数
		System.out.println(file);
		String FileName=file.substring(14, file.length());
		System.out.println(FileName);
		System.out.println(file);
		String fileNamePath =Path+file;
		//转码，免得文件名中文乱码  
		System.out.println(fileNamePath);
		// 设置响应头，控制浏览器下载该文件  

		FileInputStream fis=new FileInputStream(file);
		response.setHeader("Content-Disposition", "attachment;filename="+FileName);
		ServletOutputStream out=response.getOutputStream();
		
		
	}

	@RequestMapping("/test/{name}")
	public void test(@PathVariable("name") String name,HttpServletRequest request,HttpServletResponse response) throws Exception{

		System.out.println(name);
	} 
}