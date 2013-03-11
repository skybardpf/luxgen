//取得車型網圖片
function GetPhoto(car) {
    $.ajax({
        url: "/Media/CarsMediaContentPartial?Type=P&car=" + car,
        dataType: "html",
        type: "GET",
        async: false,
        dataFilter: function (data) {
            return data;
        },
        success: function (data) {
            $('#liPhoto').append(data);
            $('#liPhoto').append('<div class="JQpaper"></div>');

        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(xhr.responseText);
        }
    })
}

//取得車型網影片
function GetVideo(car) {
    var result;
    $.ajax({
        url: "Media/MediaContentPartial?Type=V&car=" + car,
        dataType: "html",
        type: "GET",
        async: false,
        dataFilter: function (data) {
            return data;
        },
        success: function (data) {
            $('#ulMedia').append(data);
            $('#ulMedia').append('<div class="JQpaper"></div>');
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(xhr.responseText);
        }
    })
}

//取得車型網選單
function GetMenu(car) {
    $.ajax({
        url: "Media/CarMediaMenu?car=" + car,
        dataType: "json",
        type: "GET",
        async: false,
        dataFilter: function (data) {
            return data;
        },
        success: function (data) {
            $('#li1').hide();
            $('#li3').hide();
            for (var i = 0; i < data.length; i++) {
                if ($('#li' + data[i].mediaType) != undefined) {
                    $('#li' + data[i].mediaType).show();
                }
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(xhr.responseText);
        }
    })
}