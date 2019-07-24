package com.fy.receptionserver.spot.server;

import com.fy.receptionserver.Util.DataGrid;
import com.fy.receptionserver.Util.PageUtils;
import com.fy.receptionserver.spot.entity.SpotVO;
import com.fy.receptionserver.spot.entity.Spots;
import java.util.List;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@FeignClient(value = "SPOTE-SERVER")
public interface SpotService {

    @ResponseBody
    @RequestMapping(value = "spotsController/soptSelect",method = RequestMethod.GET)
    DataGrid spotlist(@RequestParam("page") String page);

    @ResponseBody
    @RequestMapping(value = "spotsController/SoptIdSelectImg",method = RequestMethod.GET)
    SpotVO spotById(@RequestParam("id") Integer id);


}
