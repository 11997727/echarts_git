package cn.kgbd.mapper;

import cn.kgbd.model.Echarts;
import cn.kgbd.model.Illness;
import cn.kgbd.model.IllnessYear;

import java.util.List;

/**
 * @author 吴成卓
 * @version V1.0
 * @Project: echarts
 * @Package cn.kgbd.mapper
 * @Description:
 * @date 2019/12/23 星期一 15:59
 */
public interface EchartsMapper {
    /**
     * 查询所有的年份
     * @return
     */
   List<IllnessYear> selectAllYear();

    /**
     * 查询所有的疾病
     * @return
     */
   List<Illness> selectAllIllness();

    /**
     *
     * @return
     */
   Echarts selectEchartsA();
    /**
     *
     * @return
     */
    Echarts selectEchartsB();
    /**
     *
     * @return
     */
    Echarts selectEchartsC();
    /**
     *
     * @return
     */
    Echarts selectEchartsD();
    /**
     *
     * @return
     */
    Echarts selectEchartsE();
    /**
     *
     * @return
     */
    Echarts selectEchartsF();
    /**
     *
     * @return
     */
    Echarts selectEchartsG();
    /**
     *
     * @return
     */
    Echarts selectEchartsH();
    /**
     *
     * @return
     */
    Echarts selectEchartsI();
    /**
     *
     * @return
     */
    Echarts selectEchartsJ();
}
