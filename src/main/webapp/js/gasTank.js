var myChart = echarts.init(document.getElementById('showStatisticsChart'));

var startTime = 0;
var endTime = 0;

showInitChart();

$('.gasStorage').click(function () {
    loadChart("line", "addTime", "d2", function (xNeedData, yNeedData) {
        return option = {
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
                    data: xNeedData
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
                    data: yNeedData
                }
            ]
        };
    });
});

$('.statistics').click(function () {
    changeBtn($(this), $('#showStatistics'));
    showInitChart();
});

$('.benefit').click(function () {
    changeBtn($(this), $('#showBenefit'));
});

$('.confirmBtn').click(function () {
    loadChart("line", "addTime", "d6", function (xNeedData, yNeedData) {
        return option = {
            title: {
                text: '储气走势图',
                x: 'center'
            },
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
                    data: xNeedData
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
                    data: yNeedData
                }
            ]
        };
    });
});

function changeBtn(element, showEle) {
    $('.intelligent .btn').removeClass('btn-primary');
    element.addClass('btn-primary');
    $('#showStatistics').hide();
    $('#showBenefit').hide();
    showEle.show();
}

function showInitChart() {
    startTime  = moment().startOf('day').format('YYYY-MM-DD HH:mm:ss');
    endTime  = moment().endOf('day').format('YYYY-MM-DD HH:mm:ss');
    // 气柜3D柱状图
    $('.timePick').val(startTime + ' - ' + endTime);
    loadChart("line", "addTime", "d1", function (xNeedData, yNeedData) {
        return option = {
            title: {
                text: '储气走势图',
                x: 'center'
            },
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
                    data : xNeedData,
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
                    type:'line',
                    barWidth: '60%',
                    data: yNeedData,
                    label: {
                        show: true,
                        position: 'top',
                    }
                },
            ],

        };
    });
}

function loadChart(chartType, pushXName, pushYName, backFunction) {

    $.post('/gasTank/getChartData',
        {
            "startTime": startTime,
            "endTime": endTime,
        },
        function (data) {
            myChart.clear();
            var xData = [];//X轴数据
            var yData = [];//Y轴数据
            $.each(data, function (idx, item) {
                xData.push(item[pushXName]);
                yData.push(item[pushYName]);
            });
            myChart.setOption(backFunction(xData, yData));
        }, 'JSON');
}

$('.timePick').daterangepicker(
    {
        // startDate: moment().startOf('day'),
        //endDate: moment(),
        //minDate: '01/01/2012',    //最小时间
        format : 'YYYY-MM-DD', //控件中from和to 显示的日期格式
        maxDate : moment(), //最大时间
        // dateLimit : {
        //     days : 30
        // }, //起止时间的最大间隔
        showDropdowns : true,
        showWeekNumbers : false, //是否显示第几周
        timePicker : true, //是否显示小时和分钟
        timePickerIncrement : 60, //时间的增量，单位为分钟
        timePicker12Hour : false, //是否使用12小时制来显示时间
        ranges : {
            //'最近1小时': [moment().subtract('hours',1), moment()],
            // '今日': [moment().startOf('day'), moment()],
            '昨日': [moment().subtract('days', 1).startOf('day'), moment().subtract('days', 1).endOf('day')],
            '最近7日': [moment().subtract('days', 6), moment()],
            '最近30日': [moment().subtract('days', 29), moment()]
        },
        opens : 'left', //日期选择框的弹出位置
        buttonClasses : [ 'btn btn-default' ],
        applyClass : 'btn-small btn-primary blue',
        cancelClass : 'btn-small',
        separator : ' to ',
        locale : {
            format: 'YYYY/MM/DD',
            applyLabel : '确定',
            cancelLabel : '取消',
            fromLabel : '起始时间',
            toLabel : '结束时间',
            customRangeLabel : '自定义',
            daysOfWeek : [ '日', '一', '二', '三', '四', '五', '六' ],
            monthNames : [ '一月', '二月', '三月', '四月', '五月', '六月',
                '七月', '八月', '九月', '十月', '十一月', '十二月' ],
            firstDay : 1
        }
    },
    function(start, end, label) {//格式化日期显示框
        $('.timePick').val(start.format('YYYY-MM-DD HH:mm:ss') + ' - ' + end.format('YYYY-MM-DD HH:mm:ss'));
        startTime = start.format('YYYY-MM-DD HH:mm:ss');
        endTime = end.format('YYYY-MM-DD HH:mm:ss');
    }
);