<div class="box-content">
	<h4 class="page-header">รายละเอียดการกู้</h4>
	<div class="row form-group">
		<label class="col-sm-offset-1 col-sm-2">ประเภทเงินกู้</label>
		<div class="col-sm-3">
			<g:textField class="form-control" name="type" value=""/>
		</div>
		<label class="col-sm-2">เลขที่สัญญา</label>
		<div class="col-sm-3">
			<g:textField class="form-control" name="type" value=""/>
		</div>
	</div>
	<div class="row form-group">
		<label class="col-sm-offset-1 col-sm-2">วันที่ขอกู้เงิน</label>
		<div class="col-sm-3">
			<g:textField class="form-control" name="type" value=""/>
		</div>
		<label class="col-sm-2">วันที่เริ่มคืนเงิน</label>
		<div class="col-sm-3">
			<g:textField class="form-control" name="type" value=""/>
		</div>
	</div>
	<div class="row form-group">
		<label class="col-sm-offset-1 col-sm-2">จำนวนเงินขอกู้เงินสหกรณ์</label>
		<div class="col-sm-3">
			<g:textField class="form-control" name="type" value=""/>
		</div>
		<label class="col-sm-2">จำนวนงวด</label>
		<div class="col-sm-3">
			<g:textField class="form-control" name="type" value=""/>
		</div>
	</div>
	<div class="row form-group">
		<label class="col-sm-offset-1 col-sm-2">จำนวนเงินนำส่งคืนเป็นงวดรายเดือน</label>
		<div class="col-sm-3">
			<g:textField class="form-control" name="type" value=""/>
		</div>
	</div>
	<div class="row form-group">
		<label class="col-sm-offset-1 col-sm-2">วัตถุประสงค์ในการกู้เงิน</label>
		<div class="col-sm-3">
			<g:textField class="form-control" name="type" value=""/>
		</div>
	</div>
	<div class="row form-group">
		<label class="col-sm-offset-1 col-sm-2">ข้อมูลการค้ำประกัน</label>
		<div class="col-sm-3">
			<g:textField class="form-control" name="type" value=""/>
		</div>
	</div>
	<div class="row form-group">
		<label class="col-sm-offset-1 col-sm-2">ข้อมูลการค้ำประกัน</label>
		<div class="col-sm-3">
			<g:textField class="form-control" name="type" value=""/>
		</div>
	</div>
	<div class="row form-group">
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
