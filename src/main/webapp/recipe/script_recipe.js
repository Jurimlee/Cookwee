/**
 * 
 */

var inputerror = "레시피등록에 실패했습니다.\n 잠시 후 다시 시도하세요."

//작성폼에서 이미지 썸네일 형태로 보여주기
  function previewImage(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();
      
      reader.onload = function(e) {
        $('#image_preview').attr('src', e.target.result).show();
      }
      
      reader.readAsDataURL(input.files[0]);
    }
  }

  