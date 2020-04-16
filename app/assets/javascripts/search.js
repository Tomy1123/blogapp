$(function() {
  $("#blog_search").on("keyup", function() {
  
    var input = $("#blog_search").val();
    $.ajax({
      type: 'GET',
      url: '/blogs/search',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function(blogs) {
      if (blogs.length !== 0) {
        console.log(data)
        $('#blog_search').autocomplete({
          autoFocus: true,
          source: data,
          minLength: 1,
          
       
        });
      }

    })
  });
  // var posts=['RON','RUN']
  // $('#post_search').autocomplete({
  //   autoFocus: true,
  //   source: posts,
  //   minLength: 1,
 
  // });

});