var modal= $("#modal");
modal.hide();
var buy_it= $("button.buy_it");
buy_it.on("click", function(){
  modal.show();
});
modal.on("click", function(){
  modal.hide();
});
