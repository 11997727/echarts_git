package cn.kgbd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * @author 吴成卓
 * @version V1.0
 * @Project: echarts
 * @Package cn.kgbd.model
 * @Description:
 * @date 2019/12/23 星期一 18:43
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Echarts {

    private String name;//疾病名称
    private String type="line";
    private boolean smooth=true;
    private String seriesLayoutBy="row";

    private List<Integer>data;


//    private String year;
//    private Integer sum;
//    private String illnessName;
}

