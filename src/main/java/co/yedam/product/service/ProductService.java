package co.yedam.product.service;

import java.util.List;

import co.yedam.product.ProductVO;

public interface ProductService {
	
	public List<ProductVO> productList();
	public ProductVO productInfo(String pCode);
	public List<ProductVO> productRList();
}
