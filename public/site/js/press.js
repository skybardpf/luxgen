$(document).ready(function(){
    var file_content = '';
    var link_content = '';
    $("input[name=linktype]:radio").change(function () {
        if($(this).attr('value')=='url'){
            if($('#modify_article').parent().html()){
                file_content = $('#modify_article').parent().html();
                $('#modify_article').parent().html('');
            }
            if(link_content){
                $('#link_holder').html(link_content);
            } else {
                $('#link_holder').html("<input type='text' name='link' value=''  id='modify_link' />");
            }
        } else if($(this).attr('value')=='file'){
            if($('#modify_link').parent().html()){
                link_content = $('#modify_link').parent().html();
                $('#modify_link').parent().html('');
            }
            if(file_content){
                console.log(file_content);
                $('#link_holder').html(file_content);
            } else {
                $('#link_holder').html("<input type='file' name='article' value=''  id='modify_article' />");
            }
        }
    });
});