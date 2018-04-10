var myChart = echarts.init(document.getElementById('showStatistics'));

showInitChart();

function showInitChart() {
    // 气柜3D柱状图
    option = {
        title: {
            text: '出口净化气二氧化碳浓度'
        },
        tooltip: {
            trigger: 'axis'
        },
        xAxis: {
            type: 'category',
            data: ['4/20', '4/21', '4/22', '4/23', '4/24', '4/25', '4/26']
        },
        yAxis: {
            type: 'value',
            max: '100'
        },
        visualMap: {
            top: 10,
            right: 10,
            pieces: [{
                gt: 0,
                lte: 10,
                color: '#cc0033'
            }, {
                gt: 10,
                lte: 20,
                color: '#ff9933'
            }, {
                gt: 20,
                lte: 70,
                color: '#096'
            }, {
                gt: 70,
                lte: 100,
                color: '#cc0033'
            }],
            precision: 1,
            outOfRange: {
                color: '#999'
            }
        },
        series: [{
            data: [50, 45, 39, 44, 39, 45, 55],
            type: 'line',
            smooth: true,
            markLine: {
                silent: true,
                data: [{
                    name: '最低稳定点',
                    yAxis: 20
                },
                    {
                        name: '最高稳定点',
                        yAxis: 70
                    }]
            }
        }]
    };


// 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
}
