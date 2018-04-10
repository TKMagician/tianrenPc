$(function () {
    $('#equitment').DataTable({
        'paging': true,
        'lengthChange': false,
        'searching': false,
        'ordering': true,
        'info': false,
        'autoWidth': false,
        'pageLength' : 12
    })

    var defaultData = [
        {
            text: '卸料仓滑动门',
            href: '#parent2',
            tags: ['0']
        },
        {
            text: '增氧风机',
            href: '#parent1',
            tags: ['2'],
            nodes: [
                {
                    text: '风机#1',
                    href: '#child1',
                    tags: ['0'],
                },
                {
                    text: '风机#2',
                    href: '#child2',
                    tags: ['0']
                }
            ]
        },
        {
            text: '舱底螺旋输送机',
            href: '#parent1',
            tags: ['2'],
            nodes: [
                {
                    text: '舱底螺旋输送机#1',
                    href: '#child1',
                    tags: ['0'],
                },
                {
                    text: '舱底螺旋输送机2#',
                    href: '#child2',
                    tags: ['0']
                }
            ]
        },
        {
            text: '输送机',
            href: '#parent1',
            tags: ['2'],
            nodes: [
                {
                    text: '输送机#1',
                    href: '#child1',
                    tags: ['0'],
                },
                {
                    text: '输送机2#',
                    href: '#child2',
                    tags: ['0']
                },
                {
                    text: '输送机3#',
                    href: '#child2',
                    tags: ['0']
                },
                {
                    text: '输送机4#',
                    href: '#child2',
                    tags: ['0']
                }
            ]
        },
        {
            text: '制浆机',
            href: '#parent3',
            tags: ['0']
        },
        {
            text: '格栅机',
            href: '#parent4',
            tags: ['0']
        },
        {
            text: '螺旋压榨机',
            href: '#parent5',
            tags: ['0']
        }
    ];


    $('#equTreeview').treeview({
        data: defaultData
    });
});