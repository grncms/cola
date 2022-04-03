package com.junefw.infra.modules.index;

//import java.util.Iterator;1

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {


	@RequestMapping(value = "/xdmin/index/indexView")
	public String indexForm(Model model) throws Exception {

		return "xdmin/index/indexView";
	}

	
}
