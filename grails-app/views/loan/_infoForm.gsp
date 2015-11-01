<div class="box-content">
    <h4 class="page-header">ข้อมูลทั่วไป</h4>
    <div class="row">
        <label class="col-sm-offset-1 col-sm-3 control-label">รหัสสมาชิกสหกรณ์</label>
        <div class="col-sm-2">
            <g:formatNumber number="${member.id}" format="#####"/>
        </div>
        <label class="col-sm-2 control-label">รหัสพนักงาน</label>
        <div class="col-sm-2">
            <g:formatNumber number="${member.i_employee}" format="#####"/>
        </div>
    </div>
    <div class="row">
        <label class="col-sm-offset-1 col-sm-3 control-label">ชื่อสมาชิกสหกรณ์</label>
        <div class="col-sm-3">
            <g:fieldValue bean="${member}" field="n_first"/> <g:fieldValue bean="${member}" field="n_last"/>
        </div>
    </div>
    <div class="row">
        <label class="col-sm-offset-1 col-sm-3 control-label">วันที่เป็นสมาชิกสหกรณ์</label>
        <div class="col-sm-3">
            <g:formatDate format="dd/MM/yyyy" date="${member.d_member}"/>
        </div>
    </div>
    <div class="row">
        <label class="col-sm-offset-1 col-sm-3 control-label">ค่าหุ้นรายเดือน (เดือนละ)</label>
        <div class="col-sm-2">
            <g:fieldValue bean="${member}" field="m_share"/> บาท
        </div>
        <label class="col-sm-2 control-label">คิดเป็นมูลค่า</label>
        <div class="col-sm-2">
            <g:set var="totalShare" value="${member.m_share/10}"/>
            <g:formatNumber number="${totalShare}" type="number" minIntegerDigits="1"/> หุ้น
        </div>
    </div>
    <div class="row">
        <label class="col-sm-offset-1 col-sm-3 control-label">ค่าหุ้นสะสม</label>
        <div class="col-sm-2">
            <g:fieldValue bean="${member}" field="m_tot_share"/> บาท
        </div>
        <label class="col-sm-2 control-label">คิดเป็นมูลค่า</label>
        <div class="col-sm-2">
            <g:set var="totalShare" value="${member.m_tot_share/10}"/>
            <g:formatNumber number="${totalShare}" type="number" minIntegerDigits="1"/> หุ้น
        </div>
    </div>
    <div class="row">
        <label class="col-sm-offset-1 col-sm-3 control-label">เงินฝากออมทรัพย์พิเศษ-อุดมทรัพย์</label>
        <div class="col-sm-3">
            ? บาท
        </div>
    </div>
</div>