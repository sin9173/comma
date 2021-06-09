function carreerIN() {

	var category = $("#careerSelect option:selected").val();
	var career = $("#carrerText").val();
	var birth = $("#tr_birth").val();
	var d = new Date();
	var N_year = d.getFullYear();

	var birth = birth.substring(0, 4);

	var age = N_year - birth - 19;

	var casw = 0;

	// 같은 분야가 있는지 비교

	if (age >= career) {

		$("#catH5").each(function(index, item) {

			var tempCat = $(item).text();

			if (tempCat == category) {
				$("#carH5").eq(index).text(career + "년");

				$("input[name=t_career]").eq(index).val(uni);
				alert(index);
				casw = 1;

				return;
			}

		});

		if (casw == 1) {
			return;
		}
		var uni = category + ":" + career;
	
		var cat = $('<div style="border-bottom:1px solid black; heigt:50px;"> </div>');
		var catH5 = $('<h5 style="font-size:15px;" id="catH5">' + category
				+ '</h5>');

		var car = $('<div style="border-bottom:1px solid black; heigt:50px;"> </div>')
		var carH5 = $('<h5 style="font-size:15px;" id="carH5">' + career
				+ '년</h5>')

		var del = $('<div style="border-bottom:1px solid black; heigt:50px;"></div>');
		var delBtn = $('<input type="button" id="delCareerBtn" class="btn btn-primary" value="삭제" style="height:24px; font-size:13px;" onclick="carreerOUT(this)">')

		var hide = $('<div style="display:none"></div>');
		var hideInput = $("<input style='display:none' type='hide' name='t_careerObject' value='"
				+ uni + "'>");

		$(cat).append(catH5);
		$(car).append(carH5);
		$(del).append(delBtn);
		$(hide).append(hideInput);

		$("#careerCat").append(cat);
		$("#careerNum").append(car);
		$("#careerDel").append(del);
		$("#careerHide").append(hide);
	} else {

		alert("경력사항은 만 19세 이상 활동만 인정 됩니다.");

	}
}

function carreerOUT(me) {
	alert("탔어~");
	var index = $(me).parent().index();
	alert("커리어" + index);

	$("#careerCat div").eq(index).remove();
	$("#careerNum div").eq(index).remove();
	$("#careerDel div").eq(index).remove();
	$("#careerHide div").eq(index).remove();
}

function univIN() {

	alert("함수야~");
	var schoolName = $("#schoolInput").val();
	var majorName = $("#majorInput").val();

	var uni = schoolName + ":" + majorName;

	var sc = $('<div style="border-bottom:1px solid black; heigt:50px;" align="center"> </div>');
	var scH5 = $('<h5 style="font-size:15px;">' + schoolName + '</h5>');

	var maj = $('<div style="border-bottom:1px solid black; heigt:50px;"  align="center"> </div>')
	var majH5 = $('<h5 style="font-size:15px;">' + majorName + '</h5>')

	var del = $('<div style="border-bottom:1px solid black; heigt:50px;"  align="center"> </div>');
	var delBtn = $('<input type="button" class="btn btn-primary" value="삭제" style="height:24px; font-size:13px;" onclick="univOUT(this)">')

	var hide = $('<div style="display:none"></div>');
	var hideInput = $("<input style='display:none' type='hide' name='t_educationObject' value='"
			+ uni + "'>");

	$(sc).append(scH5);
	$(maj).append(majH5);
	$(del).append(delBtn);
	$(hide).append(hideInput);

	$("#scDIV").append(sc);
	$("#majorDIV").append(maj);
	$("#scDelDIV").append(del);
	$("#scHideDIV").append(hideInput);

}

function univOUT(me) {
	alert("탔어~");
	var index = $(me).parent().index();
	alert(index);

	$("#scDIV div").eq(index).remove();
	$("#majorDIV div").eq(index).remove();
	$("#scDelDIV div").eq(index).remove();
	$("#scHideDIV div").eq(index).remove();
}

function licIN() {
	var licName = $("#licInput").val();

	var lic = $('<div style="border-bottom:1px solid black; heigt:50px;"  align="center"> </div>');
	var licH5 = $('<h5 style="font-size:15px;">' + licName + '</h5>');

	var del = $('<div style="border-bottom:1px solid black; heigt:50px;" > </div>');
	var delBtn = $('<input type="button" class="btn btn-primary"  align="center" value="삭제" style="height:24px; font-size:13px;" onclick="licOUT(this)">')

	var hide = $('<div style="display:none"></div>');
	var hideInput = $("<input style='display:none' type='hide' name='t_licenseObject' value='"
			+ licName + "'>");

	$(lic).append(licH5);
	$(del).append(delBtn);
	$(hide).append(hideInput);

	$("#licDIV").append(lic);
	$("#licDelDIV").append(del);
	$("#licHideDIV").append(hideInput);
}

function licOUT(me) {
	var index = $(me).parent().index();
	alert(index);

	$("#licDIV div").eq(index).remove();
	$("#licDelDIV div").eq(index).remove();
	$("#licHideDIV div").eq(index).remove();
}

function Tc_resist() {
	alert("으아~~");

	var birth_pattern = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
	var phone_pattern = /^(?:(010-?\d{4})|(01[1|6|7|8|9]-?\d{3,4}))-?\d{4}$/;
	var account_pattern = /[^0-9]/g;

	var birth = $("#tr_birth");
	var phone = $("#tr_phone");
	var account = $("#tr_account");

	var birthCheck = birth_pattern.test(birth.val());
	var phoneCheck = phone_pattern.test(phone.val());
	var accountCheck = account_pattern.test(account.val());

	if (birthCheck == false) {
		alert("생년월일을 확인해주세요.");

		birth.focus();

	} else if (phoneCheck == false) {
		alert("휴대폰을 확인해주세요.");

		phone.focus();

	} else if (accountCheck == true) {
		alert("계좌번호를 확인해주세요.");

		account.focus();
	}

	var caCount = 0;
	$("h5[id=catH5]").each(function(index, item) {

		caCount = caCount + 1;
	});

	if (caCount == 0) {
		alert("경력사항을 입력해주세요.");
		return;
	}

	// 폼데이터 등록
	var formData = $("#t_resistForm").serializeObject();

	$.ajax({

		url : "t_Resist.do",
		cache : false,
		type : "POST",
		contentType : "application/json; charset=UTF-8",
		data : JSON.stringify(formData),
		success : function(data) {
			alert("들왔어?");
			var form = new FormData(document.getElementById("t_resistForm"));
			$.ajax({
				url : "t_ResistFile.do",
				cache : false,
				data : form,
				dataType : 'text',
				processData : false,
				contentType : false,
				type : 'POST',
				success : function(response) {
					alert("등록되었습니다.");

					location.href = "mypage.do";
				},
				error : function(jqXHR, error) {
					alert('error : ' + error);
				}
			});
		},
		error : function(xhr, status, error) {
			alert("[" + xhr.status + "]" + error);
		}
	});

}

function profileChange(me) {

	alert(me.files[0].name);

	var file = me.files[0];

	var reader = new FileReader();

	reader.onload = function(e) {
		var myphoto = $("#my_prophoto");

		myphoto.attr('src', e.target.result);

	}

	reader.readAsDataURL(file);

}

function birthCheck(me) {

	var pattern = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;

	var birth = $("#tr_birth");

	var res = pattern.test(birth.val());
	var msg = $("#birthMsg");

	if (res == true) {
		msg.text("올바른 생년월일 입니다.");
		msg.css({
			"color" : "blue",
			"display" : "inline-block"
		});

	} else {
		msg.text("생년월일을 다시 확인해주세요.");
		msg.css({
			"color" : "red",
			"display" : "inline-block"
		});
		birth.val("");
	}

}

function phoneCheck(me) {

	var pattern = /^(?:(010-?\d{4})|(01[1|6|7|8|9]-?\d{3,4}))-?\d{4}$/;

	var phone = $("#tr_phone");

	var res = pattern.test(phone.val());

	var msg = $("#phoneMsg");

	if (res == true) {
		msg.text("올바르게 입력되었습니다.");
		msg.css({
			"color" : "blue",
			"display" : "inline-block"
		});

	} else {
		msg.text("휴대폰을 다시 확인해주세요.");
		msg.css({
			"color" : "red",
			"display" : "inline-block"
		});
		phone.val("");
	}
}

function accountCheck(me) {

	var pattern = /[^0-9]/g;

	var account = $("#tr_account");

	var res = pattern.test(account.val());

	var accountMsg = $("#accountMsg");

	if (res == false) {

		accountMsg.text("O");
		accountMsg.css({

			"display" : "inline-block",
			"color" : "blue"
		});

	} else {
		accountMsg.text("X");
		accountMsg.css({
			"display" : "inline-block",
			"color" : "red"
		})

	}
}

function tc_modify() {
	var caCount = 0;
	$("h5[id=catH5]").each(function(index, item) {

		caCount = caCount + 1;
	});

	if (caCount == 0) {
		alert("경력사항을 입력해주세요.");
		return;
	}

	// 폼데이터 등록
	var formData = $("#TmodifyForm").serializeObject();

	$.ajax({

		url : "changeInfo_t.do",
		cache : false,
		type : "POST",
		contentType : "application/json; charset=UTF-8",
		data : JSON.stringify(formData),
		success : function(data) {
			alert("들왔어?");
			// var form = new FormData(document.getElementById("t_resistForm"));
			location.href = 'mypage.do';
		},
		error : function(xhr, status, error) {
			alert("[" + xhr.status + "]" + error);
		}
	});
}