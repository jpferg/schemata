<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <META HTTP-EQUIV="Pragma" CONTENT="no-cache">
    <META HTTP-EQUIV="Expires" CONTENT="-1">

<script type="text/javascript" src="http://127.0.0.1:5001/js/prototype.js"></script>
<script type="text/javascript" src="http://127.0.0.1:5001/js/scriptaculous.js"></script>

<!-- <script type="text/javascript">
function addRowToTable()
{
  var tbl = document.getElementById('tblSample');
  var lastRow = tbl.rows.length;
  // if there's no header row in the table, then iteration = lastRow + 1
  var iteration = lastRow;
  var row = tbl.insertRow(lastRow);

  // left cell
  var cellLeft = row.insertCell(0);
  var textNode = document.createTextNode(iteration);
  cellLeft.appendChild(textNode);

  // right cell
  var cellRight = row.insertCell(1);
  var el = document.createElement('input');
  el.type = 'text';
  el.name = 'txtRow' + iteration;
  el.id = 'txtRow' + iteration;
  el.size = 40;

  el.onkeypress = keyPressTest;
  cellRight.appendChild(el);

  // select cell
  var cellRightSel = row.insertCell(2);
  var sel = document.createElement('select');
  sel.name = 'selRow' + iteration;
  sel.options[0] = new Option('column', 'column');
  sel.options[1] = new Option('compound column', 'comp_column');
  sel.options[2] = new Option('sub-column', 'sub_column');
  sel.options[3] = new Option('row', 'row');
  sel.options[4] = new Option('compound row', 'comp_row');
  sel.options[5] = new Option('sub-row', 'sub_row');
  cellRightSel.appendChild(sel);
}
function keyPressTest(e, obj)
{
  var validateChkb = document.getElementById('chkValidateOnKeyPress');
  if (validateChkb.checked) {
    var displayObj = document.getElementById('spanOutput');
    var key;
    if(window.event) {
      key = window.event.keyCode;
    }
    else if(e.which) {
      key = e.which;
    }
    var objId;
    if (obj != null) {
      objId = obj.id;
    } else {
      objId = this.id;
    }
    displayObj.innerHTML = objId + ' : ' + String.fromCharCode(key);
  }
}
function removeRowFromTable()
{
  var tbl = document.getElementById('tblSample');
  var lastRow = tbl.rows.length;
  if (lastRow > 2) tbl.deleteRow(lastRow - 1);
}
function openInNewWindow(frm)
{
  // open a blank window
  var aWindow = window.open('', 'TableAddRowNewWindow',
   'scrollbars=yes,menubar=yes,resizable=yes,toolbar=no,width=400,height=400');

  // set the target to the blank window
  frm.target = 'TableAddRowNewWindow';

  // submit
  frm.submit();
}

function validateRow(frm)
{
  var chkb = document.getElementById('chkValidate');
  if (chkb.checked) {
    var tbl = document.getElementById('tblSample');
    var lastRow = tbl.rows.length - 1;
    var i;
    for (i=1; i<=lastRow; i++) {
        var aRow = document.getElementById('txtRow' + i);
        if (aRow.value.length <= 0) {
                                 alert('Row ' + i + ' is empty');
                                 return;
                                    }
                                }
                    }
                    openInNewWindow(frm);
}

</script> -->
</head>
<body>

% if getattr(c, 'error'):
        <center class="error-message">${c.error | h}<br/><br/></center>
% endif

        ${self.body()}
    </body>
</html>
