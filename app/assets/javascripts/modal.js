$(document).on('turbolinks:load', function() {

  // 検索用モーダル
  $('.search-modalbtn').click(function() {
    // オーバーレイ表示
    $('body').append('<div class="modal-overlay"></div>');
    $('.modal-overlay').fadeIn('0.3');
    // モーダルコンテンツの表示
    var modal = '#' + $(this).attr('data-target');
    $(modal).fadeIn('0.3');
    modalResize();
    // オーバーレイとモーダルコンテンツのフェードアウト
    $('.modal-overlay, .modal-close').off().click(function() {
      $(modal).fadeOut('0.3');
      $('.modal-overlay').fadeOut('0.3', function() {
        $('.modal-overlay').remove();
      });
    });

    // リサイズしたら表示位置を再取得
    $(window).on('resize', function() {
      modalResize();
    });

    // モーダルコンテンツの表示位置を取得
    function modalResize() {
      var w = $(window).width();
      var h = $(window).height();

      // モーダルコンテンツの表示位置取得
      var x = (w - $(modal).outerWidth(true)) / 2;
      var y = (h - $(modal).outerHeight(true)) / 2;

      // モーダルコンテンツの表示位置の設定
      $(modal).css({'left': x + 'px', 'top': y + 'px'});
    }
  });

  // イベントdeleteボタンのモーダル
  $('.event-deletebtn').click(function() {
    // オーバーレイ表示
    $('body').append('<div class="modal-overlay"></div>');
    $('.modal-overlay').fadeIn('0.3');
    // モーダルコンテンツ表示
    var modal = '#' + $(this).attr('data-target');
    $(modal).fadeIn('0.3');
    modalResize();
    // オーバーレイとモーダルコンテンツのフェードアウト
    $('.modal-overlay, .modal-close').off().click(function() {
      $(modal).fadeOut('0.3');
      $('.modal-overlay').fadeOut('0.3', function() {
        $('.modal-overlay').remove();
      });
    });

    // リサイズしたら表示位置を再取得
    $(window).on('resize', function() {
      modalResize();
    });

    // モーダルコンテンツの表示位置を取得
    function modalResize() {
      var w = $(window).width();
      var h = $(window).height();

      // モーダルコンテンツの表示位置取得
      var x = (w - $(modal).outerWidth(true)) / 2;
      var y = (h - $(modal).outerHeight(true)) / 2;

      // モーダルコンテンツの表示位置の設定
      $(modal).css({'left': x + 'px', 'top': y + 'px'});
    }
  });

  // チケット予約ボタンのモーダル
  $('.ticket-bookingbtn').click(function() {
    // オーバーレイ表示
    $('body').append('<div class="modal-overlay"></div>');
    $('.modal-overlay').fadeIn('0.3');
    // モーダルコンテンツ表示
    var modal = '#' + $(this).attr('data-target');
    $(modal).fadeIn('0.3');
    modalResize();

    // オーバーレイとモーダルコンテンツのフェードアウト
    $('.modal-overlay, .modal-close').off().click(function() {
      $(modal).fadeOut('0.3');
      $('.modal-overlay').fadeOut('0.3', function() {
        $('.modal-overlay').remove();
      });
    });

    // リサイズしたら表示位置を再取得
    $(window).on('resize', function() {
      modalResize();
    });

    // モーダルコンテンツの表示位置を取得
    function modalResize() {
      var w = $(window).width();
      var h = $(window).height();

      // モーダルコンテンツの表示位置取得
      var x = (w - $(modal).outerWidth(true)) / 2;
      var y = (h - $(modal).outerHeight(true)) / 2;

      // モーダルコンテンツの表示位置の設定
      $(modal).css({'left': x + 'px', 'top': y + 'px'});
    }
  });

  // チケットキャンセルのモーダル
  $('.ticket-cancel').click(function() {
    // オーバーレイ表示
    $('body').append('<div class="modal-overlay"></div>');
    $('.modal-overlay').fadeIn('0.3');
    // モーダルコンテンツ表示
    var modal = '#' + $(this).attr('data-target');
    $(modal).fadeIn('0.3');
    modalResize();

    // オーバーレイとモーダルコンテンツのフェードアウト
    $('.modal-overlay, .modal-close').off().click(function() {
      $(modal).fadeOut('0.3');
      $('.modal-overlay').fadeOut('0.3', function() {
        $('.modal-overlay').remove();
      });
    });

    // リサイズしたら表示位置を再取得
    $(window).on('resize', function() {
      modalResize();
    });

    // モーダルコンテンツの表示位置を取得
    function modalResize() {
      var w = $(window).width();
      var h = $(window).height();

      // モーダルコンテンツの表示位置取得
      var x = (w - $(modal).outerWidth(true)) / 2;
      var y = (h - $(modal).outerHeight(true)) / 2;

      // モーダルコンテンツの表示位置の設定
      $(modal).css({'left': x + 'px', 'top': y + 'px'});
    }
  });

  // マイページのアカウント編集
  $('#account-editBtn').on('click', function() {
    $('.adsense-left').css('margin-top', '125px');
    $('.account-editList, .mypage-overlay').show();
  });

  $('.mypage-overlay').on('click', function() {
    $('.adsense-left').css('margin-top', '40px');
    $('.account-editList, .mypage-overlay').hide();
  });

});
