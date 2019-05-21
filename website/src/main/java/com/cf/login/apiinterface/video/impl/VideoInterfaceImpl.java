package com.cf.login.apiinterface.video.impl;

import com.cf.login.apiinterface.IApiInterface;
import com.cf.login.apiinterface.video.VideoInterface;
import com.cf.login.constant.APIUrlUtil;
import com.yinfeixing.video.request.APIRequest;
import com.yinfeixing.video.request.app.video.ClientVideoDetailRequest;
import com.yinfeixing.video.request.app.video.ClientVideoListRequest;
import com.yinfeixing.video.response.APIResponse;
import com.yinfeixing.video.response.app.video.ClientVideoDetailResponse;
import com.yinfeixing.video.response.app.video.ClientVideoListResponse;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class VideoInterfaceImpl implements VideoInterface {

    @Resource
    IApiInterface iApiInterface;

    @Override
    public APIResponse<ClientVideoListResponse> videoList(APIRequest<ClientVideoListRequest> apiRequest) {
        return iApiInterface.sendGetJson(apiRequest, APIUrlUtil.MOVIE_LIST_URL, ClientVideoListResponse.class);
    }

    @Override
    public APIResponse<ClientVideoDetailResponse> videoDetail(APIRequest<ClientVideoDetailRequest> apiRequest) {
        return iApiInterface.sendGetJson(apiRequest, APIUrlUtil.MOVIE_DETAIL_URL, ClientVideoDetailResponse.class);
    }
}
