package org.cak.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.UUID;

import org.cak.domain.Criteria;
import org.cak.domain.ProductDTO;
import org.cak.domain.pageDTO;
import org.cak.service.ProductService;
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
public class ProductController {
	@Autowired
	private ProductService Pservice;

	// <제품 리스트 페이지>로 이동 
	@GetMapping("productList")
	public void productList(Criteria cri,Model model) {
		System.out.println("productList="+cri);
		model.addAttribute("productList", Pservice.productList(cri));
		int total=Pservice.getTotalCount(cri);
		model.addAttribute("pageMaker", new pageDTO(cri,total));
	}
	
	// <제품 등록 페이지>로 이동
	@GetMapping("addProduct")
	public void addProduct() {
		
	}
	
	// <제품 등록 페이지>에서 등록 버튼을 클릭하면
	@PostMapping("addProduct")
	public String addProductPost(ProductDTO product) {
		Pservice.addProduct(product);
		
		return "redirect:/productList"; 
	}
	
	// 년\월\일 이름의 폴더를 생성하기 위한 메소드 선언
		private String getFolder() {
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String str = sdf.format(date);
			
			return str.replace("-", File.separator);
		}
		
		
		@PostMapping(value = "uploadAjaxAction", produces= {MediaType.APPLICATION_JSON_VALUE})
		public ResponseEntity<ArrayList<ProductDTO>> uploadAjaxAction(MultipartFile[] uploadFile) {
			ArrayList<ProductDTO> list = new ArrayList<>();
			
			// 파일 업로드 할 경로 지정
			String uploadFolder = "D:\\PORTFOLIO\\upload";
			
			// 폴더 생성(지정 폴더의 경로에 현재 폴더의 경로를 합쳐줌)
			File uploadPath = new File(uploadFolder, getFolder());
			
			// DTO의 uploadPath에 경로를 저장하기 위한 변수 선언
			String uploadFolderPath = getFolder();
			
			if (uploadPath.exists()==false) {
				uploadPath.mkdirs();
			}
			
			for (MultipartFile multipartFile : uploadFile) {
				ProductDTO productdto = new ProductDTO();
				
				// DTO filename 저장
				String uploadFileName = multipartFile.getOriginalFilename();
				productdto.setFileName(uploadFileName);
				
				UUID uuid = UUID.randomUUID();
				uploadFileName = uuid.toString() + "_" + uploadFileName;
				File saveFile = new File (uploadPath, uploadFileName);
				
				try {
					multipartFile.transferTo(saveFile);
					
					// DTO uploadPath 저장
					productdto.setUploadPath(uploadFolderPath);
					// DTO UUID 저장
					productdto.setUuid(uuid.toString());
					
					// 썸네일 이미지를 만들기 전, 썸네일 파일을 생성
					FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath,"s_"+uploadFileName));
					// 썸네일 이미지 생성
					Thumbnailator.createThumbnail(multipartFile.getInputStream(),thumbnail, 100, 100);
					// 썸네일 종료(메모리 공간 환수)
					thumbnail.close();
					
					list.add(productdto);
					
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			return new ResponseEntity<>(list,HttpStatus.OK);
		
		}
		
		@GetMapping("display")
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
