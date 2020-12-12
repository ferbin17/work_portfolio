$('.blog-post-container').on("mouseenter", function(){
  show_read_more(this, 'blog')
})

$('.blog-post-container').on("mouseover", function(){
  show_read_more(this, 'blog')
})

$('.blog-post-container').on("mouseleave", function(){
  hide_read_more(this, 'blog')
})

$('.blog-post-container').on("mouseout", function(){
  hide_read_more(this, 'blog')
})

require("packs/work")