window.show_read_more = function(ele, ele_name){
  $(ele).find(`.${ele_name}-content`).css("filter", "blur(5px)");
  $(ele).find('div.read-article').css("padding", "5% 0");
  $(ele).find('.read-article a').css("display", "inline-block");
}

window.hide_read_more = function(ele, ele_name){
  $(ele).find(`.${ele_name}-content`).css("filter", "blur(0px)");
  $(ele).find('.read-article a').hide();
}