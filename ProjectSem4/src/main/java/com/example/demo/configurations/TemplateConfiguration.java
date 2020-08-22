package com.example.demo.configurations;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;

@Configuration
public class TemplateConfiguration implements WebMvcConfigurer {

	//Cấu hình khai báo đối tượng tham gia xử lý giao diện
	@Bean
	public UrlBasedViewResolver viewResolver() {
		UrlBasedViewResolver resolver = new UrlBasedViewResolver();
		resolver.setViewClass(TilesView.class);
		return resolver;
	}
	//Đối tượng chỉ định Tiles.xml
	@Bean
	public TilesConfigurer tilesConfigurer() {
		TilesConfigurer configurer = new TilesConfigurer();
		configurer.setDefinitions(new String[] {
				"/WEB-INF/tiles/tiles.xml",
				"/WEB-INF/tiles/tiles_category.xml",
				"/WEB-INF/tiles/tiles_home.xml",
				"/WEB-INF/tiles/tiles_login.xml",
				"/WEB-INF/tiles/tiles_product.xml",
				"/WEB-INF/tiles/tiles_order.xml",
				"/WEB-INF/tiles/tiles_account.xml",
				"/WEB-INF/tiles/tiles_account_edit.xml",
				"/WEB-INF/tiles/tiles_role.xml",
				"/WEB-INF/tiles/tiles_warehouse.xml",
				"/WEB-INF/tiles/tiles_inventory.xml",
				"/WEB-INF/tiles/tiles_pucharseorderuser.xml",
				"/WEB-INF/tiles/tiles_pucharseorderadmin.xml",
				"/WEB-INF/tiles/tiles_approval.xml",
				"/WEB-INF/tiles/tiles_invoice.xml",
				"/WEB-INF/tiles/tiles_invoice_details.xml",
				"/WEB-INF/tiles/tiles_rejection.xml",
				"/WEB-INF/tiles/tiles_factory.xml"
				
				
				
				
		});
		return configurer;
	}
	
}
