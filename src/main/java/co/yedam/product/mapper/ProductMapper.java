package co.yedam.product.mapper;

import java.util.List;

import co.yedam.product.ProductVO;

public interface ProductMapper {
	public List<ProductVO> productList();
	public ProductVO selectProduct(String pCode);
	public List<ProductVO> selectRecommendedProduct();
}
