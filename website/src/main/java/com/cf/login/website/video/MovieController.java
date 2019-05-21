package com.cf.login.website.video;

import com.cf.login.apiinterface.video.VideoInterface;
import com.cf.login.utils.LogHelper;
import com.cf.login.website.BaseController;
import com.yinfeixing.video.request.APIRequest;
import com.yinfeixing.video.request.app.video.ClientVideoDetailRequest;
import com.yinfeixing.video.request.app.video.ClientVideoListRequest;
import com.yinfeixing.video.response.APIResponse;
import com.yinfeixing.video.response.app.video.ClientVideoDetailResponse;
import com.yinfeixing.video.response.app.video.ClientVideoListResponse;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RestController
@RequestMapping("/movie")
public class MovieController extends BaseController {

    private static final Logger LOGGER = LogManager.getLogger(MovieController.class);

    @Resource
    private VideoInterface videoInterface;

    /**
     * 首页
     *
     * @param httpServletRequest
     * @return
     */
    @GetMapping("/list")
    public APIResponse<ClientVideoListResponse> movieList(Integer pageNum, Integer pageSize, HttpServletRequest httpServletRequest) {
        ClientVideoListRequest bizRequest = new ClientVideoListRequest();
        bizRequest.setSearchContent("");
        bizRequest.setPageNum(pageNum);
        bizRequest.setPageSize(pageSize);
        APIRequest request = BaseController.getRequest(httpServletRequest, bizRequest);
        APIResponse<ClientVideoListResponse> apiResponse = videoInterface.videoList(request);
        return apiResponse;
    }

    @GetMapping(value = "/detail/{id}")
    public ModelAndView videoDetail(@PathVariable("id") String id, HttpServletRequest httpServletRequest,
                                    HttpServletResponse httpServletResponse) throws Exception {
        ClientVideoDetailRequest appHouseDetailRequest = new ClientVideoDetailRequest();
        appHouseDetailRequest.setVideoId(id);
        APIRequest<ClientVideoDetailRequest> request = BaseController.getRequest(httpServletRequest, appHouseDetailRequest);
        APIResponse<ClientVideoDetailResponse> apiResponse = videoInterface.videoDetail(request);
        LogHelper.info(LOGGER, "【视频详情】，获取到响应信息为={0}", apiResponse);
        ModelAndView modelAndView = new ModelAndView();
        if (apiResponse.getBizResponse() == null) {
            modelAndView.setViewName("redirect:/404");
        } else {
            modelAndView.setViewName("video/movie_detail");
            modelAndView.addObject("detail", apiResponse.getBizResponse().getClientVideo());
        }
        return modelAndView;
    }


}
