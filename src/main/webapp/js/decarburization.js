var myChart = echarts.init(document.getElementById('leftShow'));
var benefitChart = echarts.init(document.getElementById('benefitChart'));

showInitChart();
$('#showBenefit').hide();

$('.statistics').click(function () {
    changeBtn($(this), $('#showStatistics'));
    // showInitChart();
});

$('.benefit').click(function () {
    changeBtn($(this), $('#showBenefit'));
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
            var item = 80 - Math.random() * 20;
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
            max: 80,
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
            max: 40,
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
                step: 'start',
                data: getRandomData()
            },
            {
                name:'电费标准',
                type:'line',
                xAxisIndex: 1,
                yAxisIndex: 1,
                step: 'end',
                data: [26, 26, 26, 26, 26, 26, 27, 27, 33, 33, 33, 33, 30, 30, 31, 31, 31, 36, 35, 34, 33, 30, 28, 27]
            }
        ]
    };
    benefitChart.setOption(option);
});

function changeBtn(element, showEle) {
    $('.intelligent .btn').removeClass('btn-primary');
    element.addClass('btn-primary');
    $('#showStatistics').hide();
    $('#showBenefit').hide();
    showEle.show();
}

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
