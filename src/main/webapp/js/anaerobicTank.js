var myChart = echarts.init(document.getElementById('leftShow'));

showInitChart();
$('.ts').click(function () {
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

$('.diagnosis').click(function () {
    changeBtn($(this));
    showInitChart();
});

$('.mixingCycle').click(function () {
    clearBtn($(this));
    var getDayTime = function(){
        var temp = [];
        for(var i = 0;i < 24;i++){
            var hour = i;
            temp.push(hour);
        }
        return temp;
    }

    var getRandomData = function(){
        var temp = [];
        for(var i = 0;i < 24;i++){
            var item = Math.random() * 100 - Math.random() * 50;
            temp.push(Math.abs(item).toFixed(2));
        }

        return temp;
    }

    option = {
        color: ['#66CCFF', '#CC6666', '#66CCCC', '#FF9999', '#CCFF99'],
        grid: [{
            top: '10%',
            bottom: 0,
            left: '5%',
            right: '5%',
            height: '35%'
        }, {
            top: '54%',
            bottom: 0,
            left: '5%',
            right: '5%',
            height: '35%'
        }],
        tooltip: {
            trigger: 'axis',
            formatter: function(params){
                if(params instanceof Array){
                    var idxMap = [{
                        text: '搅拌速率',
                        data: []
                    }, {
                        text: '电费标准',
                        data: []
                    }];
                    var time = params[0].axisValue;
                    for(var i = 0;i < params.length;i++){
                        var seriesIdx = params[i].seriesId.split(params[i].seriesId[0]);
                        idxMap[seriesIdx[2]].data.push({
                            marker: params[i].marker,
                            seriesName: params[i].seriesName,
                            data: params[i].data
                        });
                    };

                    return '<div>'
                        + '<time>' + time + '</time>'
                        + '<br />'
                        + idxMap.map(function(item){
                            return '<span>' + item.text + '</span>' + item.data.map(function(i_item){
                                return '<p style="margin: 0;padding: 0;">' + i_item.marker + i_item.seriesName + ': ' + i_item.data +  '</p>';
                            }).join('');
                        }).join('');
                    + '</div>'
                }
            }
        },
        axisPointer: {
            link: {
                xAxisIndex: 'all'
            }
        },
        legend: {
            data:['搅拌速率', '电费标准']
        },
        xAxis: [{
            type: 'category',
            gridIndex: 0,
            boundaryGap: false,
            axisLabel: {
                interval: 0
            },
            data: getDayTime()
        }, {
            type: 'category',
            gridIndex: 1,
            position: 'top',
            boundaryGap: false,
            axisLabel: {
                show: false,
                interval: 0
            },
            data: getDayTime()
        }],
        yAxis: [{
            name: '搅拌速率',
            type: 'value',
            nameTextStyle: {
                fontSize: 14
            },
            min: 0,
            max: 100,
            gridIndex: 0,
            splitLine: {
                lineStyle: {
                    type: 'dashed'
                }
            }
        }, {
            name: '电费',
            type: 'value',
            nameTextStyle: {
                fontSize: 14
            },
            min: 0,
            max: 100,
            gridIndex: 1,
            inverse: true,
            splitLine: {
                lineStyle: {
                    type: 'dashed'
                }
            }
        }],
        series: [
            {
                name:'搅拌速率',
                type:'line',
                data: getRandomData()
            },
            {
                name:'电费标准',
                type:'line',
                xAxisIndex: 1,
                yAxisIndex: 1,
                data: getRandomData()
            }
        ]
    };
    myChart.clear();
    myChart.setOption(option);
});

$('.statistics').click(function () {
    clearBtn($(this));
});

$('.gasForecast').click(function () {
    clearBtn($(this));
    option = {
        title: {
            text: '产期预测表'
        },
        tooltip: {},
        legend: {
            data: ['产气']
        },
        radar: {
            // shape: 'circle',
            name: {
                textStyle: {
                    color: '#fff',
                    backgroundColor: '#999',
                    borderRadius: 3,
                    padding: [3, 5]
                }
            },
            indicator: [
                { name: '产气', max: 30000},
                { name: '产电', max: 38000},
                { name: '研发（Development）', max: 52000},
                { name: '市场（Marketing）', max: 25000}
            ]
        },
        series: [{
            name: '预算 vs 开销（Budget vs spending）',
            type: 'radar',
            // areaStyle: {normal: {}},
            data : [
                {
                    value : [4300, 10000, 28000, 35000, 50000, 19000],
                    name : '预算分配（Allocated Budget）'
                }
            ]
        }]
    };
    myChart.clear();
    myChart.setOption(option);
});

function clearBtn(element) {
    $('.intelligent .btn').removeClass('btn-primary');
    element.addClass('btn-primary');
    // $('#leftShow').empty();
    // $('#rightShow').empty();
}

function showInitChart() {
    // 气柜3D柱状图
    option = {
        title: {
            text: 'VFA-ALK稳定指数图'
        },
        tooltip: {
            trigger: 'axis'
        },
        xAxis: {
            type: 'category',
            data: ['4/20', '4/21', '4/22', '4/23', '4/24', '4/25', '4/26']
        },
        yAxis: {
            type: 'value'
        },
        visualMap: {
            top: 10,
            right: 10,
            pieces: [{
                gt: 0,
                lte: 0.1,
                color: '#ff9933'
            }, {
                gt: 0.1,
                lte: 0.4,
                color: '#096'
            }, {
                gt: 0.4,
                lte: 0.6,
                color: '#ff9933'
            }, {
                gt: 0.6,
                lte: 1,
                color: '#cc0033'
            }],
            precision: 1,
            outOfRange: {
                color: '#999'
            }
        },
        series: [{
            data: [0.2, 0.3, 0.1, 0.8, 0.9, 0.4, 0.2],
            type: 'line',
            smooth: true,
            markLine: {
                silent: true,
                data: [{
                    name: '最低稳定点',
                    yAxis: 0.1
                },
                {
                    name: '最高稳定点',
                    yAxis: 0.4
                }]
            }
        }]
    };


// 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
}
