var myChart = echarts.init(document.getElementById('showStatistics'));

showInitChart();
$('.gasStorage').click(function () {
    var option = {
        color: ['#5793f3'],
        tooltip: {
            trigger: 'none',
            axisPointer: {
                type: 'cross'
            }
        },
        grid: {
            top: 70,
            bottom: 50
        },
        xAxis: [
            {
                type: 'category',
                axisTick: {
                    alignWithLabel: true
                },
                axisLine: {
                    onZero: false,
                    lineStyle: {
                        color: ['#5793f3']
                    }
                },
                axisPointer: {
                    label: {
                        formatter: function (params) {
                            return '储气量  ' + params.value
                                + (params.seriesData.length ? '：' + params.seriesData[0].data : '');
                        }
                    }
                },
                data: ["周一", "周二", "周三", "周四", "周五", "周六", "周日"]
            }
        ],
        yAxis: [
            {
                type: 'value'
            }
        ],
        series: [
            {
                name:'储气量周报',
                type:'line',
                smooth: true,
                data: [300, 300, 700, 200, 199, 486, 552]
            }
        ]
    };
    myChart.setOption(option);
});

$('.statistics').click(function () {
    changeBtn($(this), $('#showStatistics'));
    showInitChart();

});

$('.security').click(function () {
    changeBtn($(this), $('#showSecurity'));
});

$('.disasterResistance').click(function () {
    changeBtn($(this), $('#showDisasterResistance'));
});

function changeBtn(element, showEle) {
    $('.intelligent .btn').removeClass('btn-primary');
    element.addClass('btn-primary');
    $('#showStatistics').hide();
    $('#showSecurity').hide();
    $('#showDisasterResistance').hide();
    showEle.show();
}

function showInitChart() {
    // 气柜3D柱状图

    option = {
        color: ['#3398DB'],
        tooltip : {
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
        xAxis : [
            {
                type : 'category',
                data : ['周一', '周一', '周三', '周四', '周五', '周六', '周日'],
                axisTick: {
                    alignWithLabel: true
                }
            }
        ],
        yAxis : [
            {
                type : 'value'
            }
        ],
        series : [
            {
                name:'耗电量',
                type:'bar',
                barWidth: '60%',
                data:[10, 52, 200, 334, 390, 330, 220],
                label: {
                    show: true,
                    position: 'top',
                }
            },
        ],

    };

// 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
}
