<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!doctype html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>后台登录-X-admin2.2</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />

    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/xadmin.css">

</head>
<body>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">

                    <!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
                    <div id="main" style="width: 100%;height:400px;"></div>

                </div>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/statics/js/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/echarts/4.2.1-rc1/echarts.min.js"></script>
<script type="text/javascript">


    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    // 指定图表的配置项和数据
    var option = {
        title: {
            text: '数据统计'
        },
        tooltip: {
            trigger: 'axis'
        },
        legend: {

        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        toolbox: {
            feature: {
                saveAsImage: {}
            }
        },
        xAxis: {
            type: 'category',
            boundaryGap: false,

        },
        yAxis: {
            type: 'value'
        },
        series: [

        ]
    };


    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);

    $.ajax({
        url:"${pageContext.request.contextPath}/show.do",
        type:'post',
        dataType:'json',
        success:function (rs) {
            // alert(JSON.stringify(rs))

            myChart.hideLoading();
            myChart.setOption({

                title: {
                    text: '数据统计'
                },
                tooltip: {
                    trigger: 'axis'
                },
                legend: {
                    data:rs.illnessa
                },
                grid: {
                    left: '3%',
                    right: '4%',
                    bottom: '3%',
                    containLabel: true
                },
                toolbox: {
                    feature: {
                        saveAsImage: {}
                    }
                },
                xAxis: {
                    type: 'category',
                    boundaryGap: false,
                    data: rs.yeara
                },
                yAxis: {
                    type: 'value'
                },
                series: rs.echarts
            });
        },
        error:function () {

        }
    })
</script>
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
</body>
</html>