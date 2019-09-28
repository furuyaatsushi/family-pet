$(document).on('turbolinks:load', function(){
  function buildHTML(message){
    var html = `<div class="message-current message clearfix">
                  <div class="message__name">
                    ${message.user_name}
                  </div>
                  <div class="message__content">
                    ${message.content}
                  </div>
                  <div class="message__date">
                    ${message.date + 'に送信'}
                  </div>
                </div>`
    return html;
  }
  $('#new_message').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this)
    var url = (window.location.href);
    $.ajax({
      url: url,
      type: 'POST',
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      console.log('done')
      var html = buildHTML(data);
      $('.dmroom-main').append(html);
      $('#new_message')[0].reset();
      function scrollBottom(){
        var target = $('.message:last');
        var position = target.offset().top;
        $('html, body').animate({scrollTop: position}, 500);
      }
      scrollBottom();
    })
    .fail(function(data){
      alert('エラーが発生したためメッセージは送信できませんでした');
    })
    .always(function(data){
      $('.form__submit').prop('disabled', false);
    })
  })
});