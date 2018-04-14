var expenditureChart = echarts.init(document.getElementById('expenditureChart'));
var benefitChart = echarts.init(document.getElementById('benefitChart'));

showInitChart();
showBenefitChart();

function showInitChart() {
    var xData = function(){
        var data = [];
        for(var i=1;i<8;i++){
            data.push("周"+i);
        }
        return data;
    }();
    option = {
        "tooltip": {
            "trigger": "axis",
            "axisPointer": {
                "type": "shadow"
            },
        },
        "grid": {
            "borderWidth": 0,
            "y2": 120,
            "top" : 5,    //距离容器上边界40像素
            "bottom": 40
        },
        "legend": {
            orient: 'vertical',
            right: 0,
            data: ['总耗能', '水耗价格', '电耗价格', '热耗价格'],
        },
        "calculable": true,
        "xAxis": [
            {
                "type": "category",
                "data": xData,
            }
        ],
        "yAxis": [
            {
                "type": "value",
            }
        ],
        "series": [
            {
                name: '总耗能',
                type: 'line',
                color:'#38D267',
                data: [900, 840, 900, 930, 870, 930, 870]
            },
            {
                "name": "水耗价格",
                "type": "bar",
                "stack": "总量",
                "barMaxWidth": 50,
                "barGap": "10%",
                "itemStyle": {
                    "normal": {
                        "barBorderRadius": 0,
                        "color": "#6AB0B8",
                        "label": {
                            "show": true,
                            "textStyle": {
                                "color": "rgba(0,0,0,1)"
                            },
                            "position": "insideTop",
                            formatter : function(p) {
                                return p.value > 0 ? (p.value ): '';
                            }
                        }
                    }
                },
                "data": [300, 280, 300, 310, 290, 310, 290]
            },
            {
                "name": "电耗价格",
                "type": "bar",
                "stack": "总量",
                "itemStyle": {
                    "normal": {
                        "color": "#D0917A",
                        "barBorderRadius": 0,
                        "label": {
                            "show": true,
                            "position": "top",
                            formatter : function(p) {
                                return p.value;
                            }
                        }
                    }
                },
                "data": [300, 280, 300, 310, 290, 310, 290]
            },
            {
                "name": "热耗价格",
                "type": "bar",
                "stack": "总量",
                "itemStyle": {
                    "normal": {
                        "color": "#9CC5B2",
                        "barBorderRadius": 0,
                        "label": {
                            "show": true,
                            "position": "top",
                            formatter : function(p) {
                                return p.value;
                            }
                        }
                    }
                },
                "data": [300, 280, 300, 310, 290, 310, 290]
            }
        ]
    }

    expenditureChart.setOption(option);
}
function showBenefitChart() {
    var xData = function(){
        var data = [];
        for(var i=1;i<8;i++){
            data.push("周"+i);
        }
        return data;
    }();
    option = {
        "tooltip": {
            "trigger": "axis",
            "axisPointer": {
                "type": "shadow"
            },
        },
        "grid": {
            "borderWidth": 0,
            "y2": 120,
            "top" : 5,    //距离容器上边界40像素
            "bottom": 40
        },
        "legend": {
            orient: 'vertical',
            right: 0,
            data: ['总效益', '产电效益', '产气效益'],
        },
        "calculable": true,
        "xAxis": [
            {
                "type": "category",
                "data": xData,
            }
        ],
        "yAxis": [
            {
                "type": "value",
            }
        ],
        "series": [
            {
                name: '总效益',
                type: 'line',
                color:'#38D267',
                data: [1000, 1080, 1000, 1060, 1040, 1060, 1000]
            },
            {
                "name": "产电效益",
                "type": "bar",
                "stack": "总量",
                "barMaxWidth": 50,
                "barGap": "10%",
                "itemStyle": {
                    "normal": {
                        "barBorderRadius": 0,
                        "color": "#6AB0B8",
                        "label": {
                            "show": true,
                            "textStyle": {
                                "color": "rgba(0,0,0,1)"
                            },
                            "position": "insideTop",
                            formatter : function(p) {
                                return p.value > 0 ? (p.value ): '';
                            }
                        }
                    }
                },
                "data": [500, 540, 500, 530, 520, 530, 500]
            },
            {
                "name": "产气效益",
                "type": "bar",
                "stack": "总量",
                "itemStyle": {
                    "normal": {
                        "color": "#D0917A",
                        "barBorderRadius": 0,
                        "label": {
                            "show": true,
                            "position": "top",
                            formatter : function(p) {
                                return p.value;
                            }
                        }
                    }
                },
                "data": [500, 540, 500, 530, 520, 530, 500]
            },
        ]
    }

    benefitChart.setOption(option);
}
