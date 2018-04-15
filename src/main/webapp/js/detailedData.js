var myChart = echarts.init(document.getElementById('gasTankPie'));

loadChart();

function loadChart() {

    $.post('/detailedData/getChartData',
        function (data) {
            myChart.clear();
            $.each(data, function (idx, item) {
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
                                {value:item['d31'], name: '甲烷'},
                                {value:1, name: '硫化氢'},
                                {value:item['d32'], name: '氧气'},
                                {value:item['d34'], name: '二氧化碳'},
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
            });
            myChart.setOption(option);
        }, 'JSON');
}