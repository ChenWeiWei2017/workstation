/**
 * @author 陈伟伟
 * @version 1.0 
 */

function createMenu(jsonData) {
    var data;
    if(typeof(jsonData) == "string"){
        var data = JSON.parse(jsonData); //部分用户解析出来的是字符串，转换一下
    }else{
        data = jsonData;
    }
    var ulHtml = '';
    for(var i = 0 ; i < data.length ; i++) {
        ulHtml += createUl(data[i]);
    }
    return ulHtml;
}

function createUl(data) {
    var ulHtml = '';
    if(data.children == undefined || data.children.length == 0) {
        ulHtml += '<li><a _href="' + data.href + '">';
        ulHtml += '<i class="iconfont">&#xe7ed;</i>';
        ulHtml += '<cite>' + data.title + '</cite>';
        ulHtml += '</a></li>';
    } else {
        ulHtml += '<li><a href="javascript:;">'
        ulHtml += '<i class="iconfont">' + data.icon + '</i>';
        ulHtml += '<cite>' + data.title + '</cite>';
        ulHtml += '<i class="iconfont nav_right">&#xe7ee;</i>';
        ulHtml += '</a>';
        ulHtml += '<ul class="sub-menu">';
        for(var i = 0 ; i < data.children.length ; i++) {
            ulHtml += createUl(data.children[i]);
        }
        ulHtml += '</ul></li>';
    }
    return ulHtml;
}