$(function () {
    var verify = false;
    $('#mpanel').slideVerify({
        type : 1,		//类型
        vOffset : 5,	//误差量，根据需求自行调整
        barSize : {
            width : '100%',
            height : '40px',
        },
        success : function() {
            verify = true;
        },
        error : function() {
            verify = false;
        }
    });
    $('.layui-btn').click(function () {
        if (!verify) {
            layer.alert(JSON.stringify(data.field), { title: '最终的提交信息' });
            return;
        }
        $.ajax({
           url: "/"
        });
        $('form').submit();
    });
})