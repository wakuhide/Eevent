/* ===================================================================

 * スムーススクロール

=================================================================== */
$(function(){
   // #で始まるアンカーをクリックした場合に処理
   $('a[href^=#]').click(function() {
      // スクロールの速度
      var speed = 400;// ミリ秒
      // アンカーの値取得
      var href= $(this).attr("href");
      // 移動先を取得
      var target = $(href == "#" || href == "" ? 'html' : href);
      // 移動先を数値で取得
      var position = target.offset().top;
      // スムーススクロール
      $($.browser.safari ? 'body' : 'html').animate({scrollTop:position}, speed, 'swing');
      return false;
   });

   $('body').prepend('<div id="grayLayer" class="grayLayer"></div>');
   $("#dropDownMenu").before('<i id="iconBars" class="iconBars"></i>')
   .before('<i id="iconClose" class="iconClose"></i>');
   $("#iconBars").click(function(){
     $("#dropDownMenu li").show(200);
     $("#grayLayer").show(400);
     $("#iconBars").hide();
     $("#iconClose").show();
   });
   $("#iconClose").click(function(){
     $("#dropDownMenu li").hide(400);
     $("#grayLayer").hide(400);
     $("#iconClose").hide();
     $("#iconBars").show();
   });

   $(".navbar-toggle").click(function () {
     $(".dropdown-menu li").show();
   });

});
