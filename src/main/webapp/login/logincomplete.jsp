<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="setting.jsp" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="https://unpkg.com/swiper/swiper-bundle.min.css" rel="stylesheet">
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="${project}script_login.js"></script>
<style>
  .main-slide-wrap {
    width: 100%;
    overflow: hidden;
    position: relative;
}
  .swiper-wrapper {
    display: flex;
    transition: transform 0.5s ease;
}
  .swiper-slide {
    flex: 0 0 100%;
    max-width: 100%;
    height: auto;
    display: flex;
    justify-content: center;
    align-items: center;
}
  .swiper-slide img {
    max-width: 100%;
    max-height: 100%;
    width: auto;
    height: auto;
}
  .swiper-slide.active {
    opacity: 1;
    transform: translateX(0%);
}
</style>
<c:if test="${sessionScope.memId != null}">
  <jsp:include page="/cookwee/cookweeTop.jsp" />
  <body>
    <div class="main-slide-wrap">
      <div class="swiper-container">
        <div class="swiper-wrapper">
          <div class="swiper-slide">
            <a href="https://www.kurly.com/goods/5053554" target="_blank">
              <img src="https://i.ytimg.com/vi/iEmrNsenT5U/maxresdefault.jpg" alt="1">
            </a>
          </div>
          <div class="swiper-slide">
            <a href="https://www.kurly.com/goods/5045446" target="_blank">
              <img src="https://i.ytimg.com/vi/-cfrT5fXCQw/maxresdefault.jpg" alt="2">
            </a>
          </div>
          <div class="swiper-slide">
            <a href="https://www.kurly.com/goods/5152842" target="_blank">
              <img src="https://i.ytimg.com/vi/ysmb1xRXvhs/maxresdefault.jpg" alt="3">
            </a>
          </div>
          <div class="swiper-slide">
            <a href="https://www.youtube.com/watch?v=3bZM8eux_ro" target="_blank">
              <img src="https://i.ytimg.com/vi/3bZM8eux_ro/maxresdefault.jpg" alt="4">
            </a>
          </div>
		<div class="swiper-slide">
		  <a href="https://www.youtube.com/watch?v=6YshqbnsmEA" target="_blank">
		   <img src="https://i.ytimg.com/vi/RZzMVFZ-4SY/maxresdefault.jpg" alt="5">
		  </a>
		</div>
		<div class="swiper-slide">
		  <a href="https://www.kurly.com/goods/5047857" target="_blank">
		   <img src="https://i.ytimg.com/vi/HHK4KWQVFuM/maxresdefault.jpg" alt="6">
		  </a>
		</div>
        </div>
      </div>
    </div>
  </body>
  <script>
    var swiper = new Swiper('.swiper-container', {
      slidesPerView: 1,
      spaceBetween: 10,
      loop: true,
      autoplay: {
        delay: 1000,
        disableOnInteraction: false,
},
});
    swiper.on('init', function() {
      var activeIndex = swiper.realIndex;
      showSlide(activeIndex);
});
    swiper.on('slideChange', function() {
      var activeIndex = swiper.realIndex;
      showSlide(activeIndex);
});
    function showSlide(index) {
      var slides = document.getElementsByClassName("swiper-slide");
      for (var i = 0; i < slides.length; i++) {
        slides[i].classList.remove("active");
}
      slides[index].classList.add("active");
}
  </script>
  <jsp:include page="/cookwee/cookweeFooter.jsp" />
</c:if>