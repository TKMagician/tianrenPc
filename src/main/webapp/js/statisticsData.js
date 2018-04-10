var myChart = echarts.init(document.getElementById('incomeChart'));

showInitChart();

function showInitChart() {
    var xData = function(){
        var data = [];
        for(var i=1;i<15;i++){
            data.push(i+"号");
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
            "x": "right",
            "data": [ ]
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
                "data": [
                    370,
                    241,
                    755,
                    261,
                    171,
                    433,
                    254,
                    425,
                    337,
                    248,
                    478,
                    135,
                    508,
                    172
                ],
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
                "data": [
                    386,
                    350,
                    255,
                    122,
                    261,
                    171,
                    176,
                    40,
                    246,
                    234,
                    815,
                    275,
                    570,
                    159,
                ]
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
                "data": [
                    370,
                    376,
                    1727,
                    552,
                    168,
                    255,
                    220,
                    909,
                    270,
                    1951,
                    385,
                    240,
                    449,
                    271
                ]
            }
        ]
    }


    myChart.setOption(option);
}
