package co.yedam.product.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.product.ProductVO;
import co.yedam.product.service.ProductService;
import co.yedam.product.service.ProductServiceImpl;

public class ProductInfoControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) {
		String path = "product/productInfo.tiles";
		String pCode = req.getParameter("pCode");
		
		ProductService productService = new ProductServiceImpl();
		ProductVO productInfo = productService.productInfo(pCode);
		List<ProductVO> pList = productService.productRList();
		
		req.setAttribute("pList", pList);
		req.setAttribute("product", productInfo);
		
		
		try {
			req.getRequestDispatcher(path).forward(req, res);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}

	}

}
