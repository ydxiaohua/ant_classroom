<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../js/jquery.min.js"></script>
<script src="../js/echarts.js"></script>
</head>
<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <center>
    <div id="maina" style="width: 600px;height:600px;"></div>
    </center>
    <div id="mainb"  style="width:400px;height:200px;"></div>
    <script type="text/javascript">

        //查询数据
    $(function(){
    	//表的标题
    	var   le;
    	//表的x轴字段
    	var  xax;
    	//表格数据
    	var   ser;
    $.ajax({
	    url:"../raaac/chaxxiaxia",
		type:"post",
    	success:function(chu){
    		le=chu.leg;
    		xax=chu.xax;
    		ser=chu.ser;
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('maina'));
            // 添加点击事件
        var option = {
            color: ['#3398DB'],
            title: {
                text: ''
            },
            tooltip: {
                trigger: 'axis',
                axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                    type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                }
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            legend: {
                data:le
            },
            xAxis: {
                data:xax
            },
            yAxis: {},
            series: [{
                name: '浏览量',
                type: 'bar',
                data: ser
            }
            ]
        };
            myChart.on('click', function(param) {

                chaxlit(param.name);
            });
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    	}
    })
    })
        function    chaxlit(name){
                $.ajax({
                    url:"../raaac/zhexian",
                    type:"post",
                    data:{"name":name},
                    dataType:"json",
                    success:function(chu){
                        le=chu.leg;
                        xax=chu.xax;
                        ser=chu.ser;
                        // 基于准备好的dom，初始化echarts实例
                        var myChart = echarts.init(document.getElementById('mainb'));
                        // 指定图表的配置项和数据
                        option = {
                            title: {text: '月浏览量'},
                            tooltip: {},
                            legend: {
                                data:le
                            },
                            xAxis: {
                                type: 'category',
                                data:xax
                            },
                            yAxis: {},
                            series: [{
                                type: 'line',
                                data:ser,
                                markLine: {
                                    data: [
                                        {type: 'average', name: '平均值'},  //所有数据的平均值
                                        [{                          //取所有数据的最大值
                                            symbol: 'none',
                                            x: '90%',
                                            yAxis: 'max'
                                        }, {
                                            symbol: 'circle',
                                            label: { normal: { position: 'start', formatter: '最大值'}},}]
                                    ]
                                }
                            }]
                        };
                        // 使用刚指定的配置项和数据显示图表。
                        myChart.setOption(option);
                    }
                })
        }
    </script>
</body>
</html>