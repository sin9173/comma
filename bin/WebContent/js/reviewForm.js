/**
 * 리뷰 형식
 */

function pReview_write_open() {//그림리뷰 작성창열기
	$("#pReview_write").show();
	$(".dim").show();
}
function pReview_write_close() {//그림리뷰 작성창열기
	$("#pReview_write").hide();
	$(".dim").hide();
}
function pReview_view_open(number) {//그림리뷰 작성창열기
	alert("으어~");
	rev_View(number);
	$("#pReview_view").show();
	$(".dim").show();
}
function pReview_view_close() {//그림리뷰 작성창열기
	$("#pReview_view").hide();
	$(".dim").hide();
}
function pReview_write_imageView() {
	alert("들어옴");
	var fileName = $(this).val().split("\\").pop();
	$(this).siblings(".custom-file-label").addClass("selected").html(fileName);
}
function reviewfileChange(me) {

	var file = me.files[0];

	var reader = new FileReader();

	reader.onload = function(e) {
		var myphoto = $("#review_photo");

		myphoto.attr('src', e.target.result);

	}

	reader.readAsDataURL(file);

}
function pReview_read(){
	
	
	
}

