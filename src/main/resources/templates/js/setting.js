$(function () {
    const e = JSON.parse(document.getElementById("data").innerText);
    new Vue({
        el: '#vue-div',
        data: {
            mail: e,
            version: '',
        },
        methods: {
            val: function (val) {
                return val;
            }
        }
    })

    $(".btn-primary").click(function () {
        const formId = "ajax" + $(this).attr("id");
        $.post('update', $("#" + formId).serialize(), function (data) {
            if (data.success || data.status === 200) {
                $.gritter.add({
                    title: '  操作成功...',
                    class_name: 'gritter-success' + (!$('#gritter-light').get(0).checked ? ' gritter-light' : ''),
                });
            } else {
                $.gritter.add({
                    title: '  发生了一些异常...',
                    class_name: 'gritter-error' + (!$('#gritter-light').get(0).checked ? ' gritter-light' : ''),
                });
            }
        });
    });
    $("#testEmailService").click(function () {
        $.get("testEmailService", function (data) {
            if (data.success || data.status === 200) {
                $.gritter.add({
                    title: '测试邮件发送成功...',
                    class_name: 'gritter-success' + (!$('#gritter-light').get(0).checked ? ' gritter-light' : ''),
                });
            } else {
                $.gritter.add({
                    title: '测试邮件发送失败...',
                    class_name: 'gritter-error' + (!$('#gritter-light').get(0).checked ? ' gritter-light' : ''),
                });
            }
        })
    })
});