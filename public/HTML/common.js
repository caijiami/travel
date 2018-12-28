/**
 * Created by 蔡迦密 on 2018/10/28.
 */
function $(id){
    return document.getElementById(id);
}
function createXhr(){
    var xhr=null;
    if (window.XMLHttpRequest)
    {
        xhr=new XMLHttpRequest();
    }else{
        xhr=new ActiveXObject("Microsoft.XMLHttp");
    }
    return xhr;

}