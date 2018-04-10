var myChart = echarts.init(document.getElementById('gasTankPie'));

showInitChart();

function showInitChart() {
    // 气柜3D柱状图

    option = {
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        series : [
            {
                type: 'pie',
                radius : '65%',
                center: ['50%', '50%'],
                selectedMode: 'single',
                data:[
                    {
                        value:1548,
                        name: '甲烷'
                    },
                    {value:535, name: '硫化氢'},
                    {value:510, name: '氧气'},
                    {value:634, name: '二氧化碳'},
                ],
                itemStyle: {
                    emphasis: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };

// 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
}
