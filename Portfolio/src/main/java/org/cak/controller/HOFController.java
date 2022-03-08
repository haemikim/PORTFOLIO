package org.cak.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.cak.domain.Criteria;
import org.cak.domain.HOFDTO;
import org.cak.service.HOFService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import net.coobird.thumbnailator.Thumbnailator;

@Controller
public class HOFController {
	@Autowired
	private HOFService hservice;

	// <제품 리스트 페이지>로 이동 
	@GetMapping("hallOfFame")
	public void hallOfFame(Criteria cri,Model model) {
		System.out.println("hallOfFame="+cri);
		model.addAttribute("hallOfFame", hservice.hallOfFame(cri));
		model.addAttribute("pageMaker");
	}
	
	// <제품 등록 페이지>로 이동
	@GetMapping("addHOF")
	public void addHOF() {
		
	}
	
	// <제품 등록 페이지>에서 등록 버튼을 클릭하면
	@PostMapping("addHOF")
	public String addHOFPOST(HOFDTO hof) {
		hservice.addHOF(hof);
		
		return "redirect:/hallOfFame"; 
	}
	
	// 년\월\일 이름의 폴더를 생성하기 위한 메소드 선언
		private String getFolder() {
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String str = sdf.format(date);
			
			return str.replace("-", File.separator);
		}
		
		
		@PostMapping(value = "uploadAjaxAction2", produces= {MediaType.APPLICATION_JSON_VALUE})
		public ResponseEntity<HOFDTO> uploadAjaxAction2(MultipartFile uploadFile) {

			
			// 파일 업로드 할 경로 지정
			String uploadFolder = "D:\\PORTFOLIO\\upload";
			
			// 폴더 생성(지정 폴더의 경로에 현재 폴더의 경로를 합쳐줌)
			File uploadPath = new File(uploadFolder, getFolder());
			
			// DTO의 uploadPath에 경로를 저장하기 위한 변수 선언
			String uploadFolderPath = getFolder();
			
			if (uploadPath.exists()==false) {
				uploadPath.mkdirs();
			}
			
			//for (MultipartFile multipartFile : uploadFile) {
			HOFDTO HOFdto = new HOFDTO();
				
				// DTO filename 저장
				String uploadFileName = uploadFile.getOriginalFilename();
				HOFdto.setFileName(uploadFileName);
				
				UUID uuid = UUID.randomUUID();
				uploadFileName = uuid.toString() + "_" + uploadFileName;
				File saveFile = new File (uploadPath, uploadFileName);
				
				try {
					uploadFile.transferTo(saveFile);
					
					// DTO uploadPath 저장
					HOFdto.setUploadPath(uploadFolderPath);
					// DTO UUID 저장
					HOFdto.setUuid(uuid.toString());
					
					// 썸네일 이미지를 만들기 전, 썸네일 파일을 생성
					FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath,"s_"+uploadFileName));
					// 썸네일 이미지 생성
					Thumbnailator.createThumbnail(uploadFile.getInputStream(),thumbnail, 100, 100);
					// 썸네일 종료(메모리 공간 환수)
					thumbnail.close();
					

					
				} catch (Exception e) {
					e.printStackTrace();
				}
			//}
			return new ResponseEntity<>(HOFdto,HttpStatus.OK);
		
		}
		
		@GetMapping("display2")
		public ResponseEntity<byte[]> getFile(String fileName) {
			File file = new File("D:\\PORTFOLIO\\upload\\" + fileName);
			
			ResponseEntity<byte[]> result = null;
			
			try {
				HttpHeaders header = new HttpHeaders();
				result= new ResponseEntity<>(FileCopyUtils.copyToByteArray(file),header,HttpStatus.OK);
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			return result;
		}
}
