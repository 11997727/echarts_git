package cn.kgbd.controller;

import cn.kgbd.service.EchartsService;
import com.alibaba.fastjson.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Map;

/**
 * @author 吴成卓
 * @version V1.0
 * @Project: echarts
 * @Package cn.kgbd.controller
 * @Description:
 * @date 2019/12/23 星期一 18:53
 */
@Controller
public class EchartsController {
    @Resource
    private EchartsService echartsService;

    @RequestMapping("/show")
    @ResponseBody
    public String show(){
        Map<String, Object> map = echartsService.queryEchartsAll();
        return JSONObject.toJSONString(map);
    }
}
