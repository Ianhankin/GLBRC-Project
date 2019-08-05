document.addEventListener("turbolinks:load", function() {
  $("#apps").sortable({
      update: function(e, ui){
          Rails.ajax({
              url: $(this).data("url"),
              type: "PATCH",
              beforeSend: function(){
                  return true
              },
              data: $(this).sortable('serialize'),
          });
      }
  });
});