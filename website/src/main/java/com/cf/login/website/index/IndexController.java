package com.cf.login.website.index;

import com.cf.login.website.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/")
public class IndexController extends BaseController {


    @GetMapping(value = "/")
    public ModelAndView index(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
        return modelAndView;
    }

//    @GetMapping(value = "/house")
//    public ModelAndView house(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Integer city) throws Exception {
//
//        return wrapper((modelAndView -> {
//
//            AppHouseListRequest appHouseListRequest = new AppHouseListRequest();
//            appHouseListRequest.setCityId(city);
//            appHouseListRequest.setPageNum(1);
//            appHouseListRequest.setPageSize(100);
//            APIRequest request = BaseController.getRequest(httpServletRequest, appHouseListRequest);
//            APIResponse<AppHouseListResponse> apiResponse = commonApiInterface.house(request);
//
//            modelAndView.setViewName("index_house");
//            modelAndView.addObject("response", apiResponse);
//        }), httpServletRequest);
//
//    }

//    @SystemType
//    @GetMapping(value = "/house/{id}")
//    public ModelAndView houseDetail(@PathVariable("id") Long id,
//                                    HttpServletRequest httpServletRequest,
//                                    HttpServletResponse httpServletResponse) throws Exception {
//
//        return wrapper((modelAndView -> {
//
//            AppHouseDetailRequest appHouseDetailRequest = new AppHouseDetailRequest();
//            appHouseDetailRequest.setId(id);
//            APIRequest<AppHouseDetailRequest> request = BaseController.getRequest(httpServletRequest, appHouseDetailRequest);
//
//            APIResponse<AppHouseDetailResponse> apiResponse = commonApiInterface.houseDetail(request);
//
//            if (apiResponse.getBizResponse() == null) {
//                modelAndView.setViewName("redirect:/404");
//            } else {
//                modelAndView.setViewName("house/detail");
//                modelAndView.addObject("response", apiResponse);
//            }
//
//        }), httpServletRequest);
//
//    }

    @GetMapping("/404")
    public ModelAndView error404(HttpServletRequest httpServletRequest) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("err_404");
        return modelAndView;
    }


}
