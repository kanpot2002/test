<div class="box-content">
		<h4 class="page-header">รายละเอียดการกู้</h4>
		<g:hiddenField name="member" value="${member.id}"/>
		<div class="form-group has-feedback">
			<label class="col-sm-offset-1 col-sm-2">ประเภทเงินกู้</label>
			<div class="col-sm-3">
				<g:select id="type" class="form-control" name="type" from="${loanType}" value="${type}" noSelection="['':'-เลือกประเภทเงินกู้-']" onchange="changeType()"/>
			</div>
			<label class="col-sm-2">เลขที่สัญญา</label>
			<div class="col-sm-3">
				<span id="showIdLoan">${loanInstance?.id}</span>
				<g:hiddenField id="idLoan" name="id" value="${loanInstance?.id}"/>
			</div>
		</div>
		<div class="form-group has-feedback">
			<label class="col-sm-offset-1 col-sm-2">วันที่ขอกู้เงิน</label>
			<div class="col-sm-3">
				<g:textField id="d_trans" name="date_trans" class="form-control"/>
				<label class="fa fa-calendar form-control-feedback" for="d_trans"></label>
			</div>
			<label class="col-sm-2">วันที่เริ่มคืนเงิน</label>
			<div class="col-sm-3">
				<g:textField id="d_begin" name="date_begin" class="form-control" value=""/>
				<label class="fa fa-calendar form-control-feedback" for="d_begin"></label>
			</div>
		</div>
		<div class="form-group has-feedback">
			<label class="col-sm-offset-1 col-sm-2">จำนวนเงินขอกู้เงินสหกรณ์</label>
			<div class="col-sm-2">
				<g:textField id="m_loan" class="form-control" name="m_loan" value="${loanInstance?.m_loan}"/>
			</div>
			<div class="col-sm-1">
				บาท
			</div>
			<label class="col-sm-2">จำนวนงวด</label>
			<div class="col-sm-2">
				<g:textField id="q_month" class="form-control" name="q_month" value="${loanInstance?.q_month}"/>
			</div>
			<div class="col-sm-1">
				งวด
			</div>
		</div>
		<div class="form-group has-feedback">
			<label class="col-sm-offset-1 col-sm-2">จำนวนเงินนำส่งคืนเป็นงวดรายเดือน</label>
			<div class="col-sm-2">
				<g:textField id="m_paid_month" class="form-control" name="m_paid_month" value="" readonly="true"/>
			</div>
			<div class="col-sm-3">
				บาท(ปัดทศนิยมขึ้น)
			</div>
		</div>
		<div class="form-group has-feedback">
			<label class="col-sm-offset-1 col-sm-2">วัตถุประสงค์ในการกู้เงิน</label>
			<div class="col-sm-7">
				<g:textField class="form-control" name="e_reason" value=""/>
			</div>
		</div>
		<div class="form-group has-feedback">
			<label class="col-sm-offset-1 col-sm-2">ข้อมูลการค้ำประกัน</label>
			<div class="col-sm-2">
				<div class="checkbox">
					<label>
						<input type="checkbox" checked=""> ค่าหุ้น
						<i class="fa fa-square-o small"></i>
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" checked=""> เงินฝาก
						<i class="fa fa-square-o small"></i>
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" checked=""> บุคคลค้ำประกัน
						<i class="fa fa-square-o small"></i>
					</label>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="col-sm-10">
					<g:textField name="a" class="form-control" value=""/>
				</div>
				<div class="col-sm-2">บาท</div>
				<div class="col-sm-10">
					<g:textField name="a" class="form-control" value=""/>
				</div>
				<div class="col-sm-2">บาท</div>
			</div>
		</div>
		<div class="form-group has-feedback">
		<g:if test="${loans}">
			<div class="col-md-offset-2 col-md-8">
				<table class="table table-striped table-bordered table-hover table-heading no-border-bottom">
					<thead>
					<tr>
						<th>ลำดับ</th>
						<th>รหัสสมาชิก</th>
						<th>ชื่อผู้ค้ำประกัน</th>
						<th>ยอดค้ำประกัน</th>
					</tr>
					</thead>
					<tbody>
					<g:each in="${loans}" status="i" var="loan">
						<tr>
							<td>${i+1}</td>
							<td>${loan.member.id}</td>
							<td>${loan.member.n_first} ${loan.member.n_last}</td>
							<td>${loan.m_loan}</td>
						</tr>
					</g:each>
					</tbody>
				</table>
			</div>
		</g:if>
		</div>
</div>
<script>
	function changeType(){
		var type = $('#type').val();
		$('#idLoan').val(type+'9999');
		$('#showIdLoan').html(type+'9999');
	}

	function calculateMPaidMonth(){
		var m_loan = $('#m_loan').val();
		var q_month = $('#q_month').val();
		if(m_loan!=''&&q_month!=''){
			var m_paid_month = Math.ceil(m_loan/q_month);
			$('#m_paid_month').val(m_paid_month);
		}
	}

	$(document).ready(function() {
		calculateMPaidMonth();

		$('#d_trans').val('<g:formatDate format="dd/MM/yyyy" date="${loanInstance?loanInstance.d_trans:new java.util.Date()}"/>');
		$('#d_trans').datepicker({
			dateFormat : 'dd/mm/yy'
		});
		$('#d_begin').val('<g:formatDate format="dd/MM/yyyy" date="${loanInstance?loanInstance.d_begin:new java.util.Date()}"/>');
		$('#d_begin').datepicker({
			setDate: new Date(),
			dateFormat : 'dd/mm/yy'
		});

		$('#m_loan').focusout(function() {
			calculateMPaidMonth();
		})

		$('#q_month').focusout(function() {
			calculateMPaidMonth();
		})
	})
</script>
