package cn.kgbd.service.impl;

import cn.kgbd.mapper.EchartsMapper;
import cn.kgbd.model.Echarts;
import cn.kgbd.model.Illness;
import cn.kgbd.model.IllnessYear;
import cn.kgbd.service.EchartsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 吴成卓
 * @version V1.0
 * @Project: echarts
 * @Package cn.kgbd.service.impl
 * @Description:
 * @date 2019/12/23 星期一 18:50
 */
@Service
public class EchartsServiceImpl implements EchartsService {
    @Resource
    private EchartsMapper echartsMapper;
    @Override
    public Map<String, Object> queryEchartsAll() {
        Map<String,Object>map=new HashMap<String, Object>();
        List<IllnessYear> illnessYears = echartsMapper.selectAllYear();
        List<String>year=new ArrayList<String>();
        for (IllnessYear illnessYear:illnessYears){
            year.add(illnessYear.getYear());
        }
        map.put("yeara",year);
        List<Illness> illnesses = echartsMapper.selectAllIllness();
        List<String>illness=new ArrayList<String>();
        for (Illness illness1:illnesses){
            illness.add(illness1.getIllnessName());
        }
        map.put("illnessa",illness);
        Echarts echarts = echartsMapper.selectEchartsA();
        Echarts echarts1 = echartsMapper.selectEchartsB();
        Echarts echarts2 = echartsMapper.selectEchartsC();
        Echarts echarts3 = echartsMapper.selectEchartsD();
        Echarts echarts4 = echartsMapper.selectEchartsE();
        Echarts echarts5 = echartsMapper.selectEchartsF();
        Echarts echarts6 =echartsMapper.selectEchartsG();
        Echarts echarts7 =echartsMapper.selectEchartsH();
        Echarts echarts8 = echartsMapper.selectEchartsI();
        Echarts echarts9 = echartsMapper.selectEchartsJ();
       List<Echarts>e=new ArrayList<Echarts>();
         e.add(echarts);
         e.add(echarts1);
        e.add(echarts2);
        e.add(echarts3);
        e.add(echarts4);
        e.add(echarts5);
        e.add(echarts6);
        e.add(echarts7);
        e.add(echarts8);
        e.add(echarts9);
        map.put("echarts",e);
        return map;
    }
}
