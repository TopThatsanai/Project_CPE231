
var ROW_NUMBER = 5;

Date.prototype.addDays = function(days) {
    var date = new Date(this.valueOf());
    date.setDate(date.getDate() + days);
    return date;
}


$(document).ready( function () {

    /* create datepicker */
    $("#txt_ReceiptDate").datepicker({ 
        dateFormat: 'dd/mm/yy' 
    });
    
    $('#btn_ReceiptDate').click(function() {
        $('#txt_ReceiptDate').datepicker('show');
    });

    /* table add delete row */
    var $TABLE = $('#div_table');
    $('.table-add').click(function () {
        var $clone = $TABLE.find('tr.hide').clone(true).removeClass('hide table-line');
        $TABLE.find('tbody').append($clone);
        re_order_no();
    });

    $('.table-remove').click(function () {
        $(this).parents('tr').detach();

        if ($('#table_main tr').length <= 9) {
            $('.table-add').click();
        }
        re_order_no();
        re_calculate_total_received();
    });

    $('#txt_CustomerCode').change (function () {
        var customer_code = $(this).val().trim();

        $.ajax({
            url:  '/customer/detail/' + customer_code,
            type:  'get',
            dataType:  'json',
            success: function  (data) {
                $('#txt_CustomerCode').val(data.customers.customer_code);
                $('#txt_CustomerName').val(data.customers.name);
            },
            error: function (xhr, status, error) {
                $('#txt_CustomerName').val('');
            }
        });
    });

    $('#txt_PaymentMethod').change (function () {
        var payment_method = $(this).val().trim();

        $.ajax({
            url:  '/payment_method/detail/' + payment_method,
            type:  'get',
            dataType:  'json',
            success: function  (data) {
                // $('#txt_PaymentMethod').val(data.payment_methods.payment_method);
                $('#txt_PaymentMethod').val(data.payment_methods.description);
            },
            error: function (xhr, status, error) {
                $('#txt_PaymentMethod').val('');
            }
        });
    });

    /* search product code  */
    $('.search_product_code').click(function () {
        $p_code = $(this).parents('td').children('span').html();
        $(this).parents('tr').find('.order_no').html('*');

        $.ajax({
            url:  '/product/list',
            type:  'get',
            dataType:  'json',
            success: function  (data) {
                let rows =  '';
                var i = 1;
                data.products.forEach(product => {
                    rows += `
                    <tr class="d-flex">
                        <td class='col-1'>${i++}</td>
                        <td class='col-3'><a class='a_click' href='#'>${product.code}</a></td>
                        <td class='col-5'>${product.name}</td>
                        <td class='col-3'></td>
                        <td class='hide'>${product.units}</td>
                    </tr>`;
                });
                $('#table_modal > tbody').html(rows);

                $('#model_header_1').text('Product Code');
                $('#model_header_2').text('Product Name');
                $('#model_header_3').text('Note');
            },
        });
        // open popup
        $('#txt_modal_param').val('product_code');
        $('#modal_form').modal();
    });

    $('.search_customer_code').click(function () {
        $p_code = $(this).parents('td').children('span').html();
        $(this).parents('tr').find('.order_no').html('*');

        $.ajax({
            url:  '/customer/list',
            type:  'get',
            dataType:  'json',
            success: function  (data) {
                let rows =  '';
                var i = 1;
                data.customers.forEach(customer => {
                    rows += `
                    <tr class="d-flex">
                        <td class='col-1'>${i++}</td>
                        <td class='col-3'><a class='a_click' href='#'>${customer.customer_code}</a></td>
                        <td class='col-5'>${customer.name}</td>
                        <td class='col-3'></td>
                        <td class='hide'></td>
                    </tr>`;
                });
                $('#table_modal > tbody').html(rows);

                $('#model_header_1').text('Customer Code');
                $('#model_header_2').text('Customer Name');
                $('#model_header_3').text('Note');

            },
        });        
        // open popup
        $('#txt_modal_param').val('customer_code');
        $('#modal_form').modal();
    });

    /* search payment method  */
    $('.search_payment_method').click(function () {
        $p_code = $(this).parents('td').children('span').html();
        $(this).parents('tr').find('.order_no').html('*');

        $.ajax({
            url:  '/payment_method/list',
            type:  'get',
            dataType:  'json',
            success: function  (data) {
                let rows =  '';
                var i = 1;
                data.payment_methods.forEach(payment_method => {
                    rows += `
                    <tr class="d-flex">
                        <td class='col-1'>${i++}</td>
                        <td class='col-3'><a class='a_click' href='#'>${payment_method.payment_method}</a></td>
                        <td class='col-5'>${payment_method.description}</td>
                        <td class='col-3'></td>
                        <td class='hide'></td>
                    </tr>`;
                });
                $('#table_modal > tbody').html(rows);

                $('#model_header_1').text('Payment Method');
                $('#model_header_2').text('Description');
                $('#model_header_3').text('Note');

            },
        });        
        // open popup
        $('#txt_modal_param').val('payment');
        $('#modal_form').modal();
    });

    /* search order_code  */
    $('.search_order_code').click(function () {
        $p_code = $(this).parents('td').children('span').html();
        $(this).parents('tr').find('.order_no').html('*');

        $.ajax({
            url:  '/receipt_line_item/list',
            type:  'get',
            dataType:  'json',
            success: function  (data) {
                let rows =  '';
                var i = 1;
                data.receipt_line_item.forEach(receipt_line_item => {
                    rows += `
                    <tr class="d-flex">
                        <td class='col-1'>${i++}</td>
                        <td class='col-3'><a class='a_click' href='#'>${receipt_line_item.order_code_id}</a></td>
                        <td class='col-5'>${receipt_line_item.invoice_date}</td>
                        <td class='col-3'></td>
                        <td class='hide'>${receipt_line_item.invoice_full_amount}</td>
                        <td class='hide'>${receipt_line_item.invoice_amount_remain}</td>
                        <td class='hide'>${receipt_line_item.amount_paid_here}</td>
                    </tr>`;
                });
                $('#table_modal > tbody').html(rows);

                $('#model_header_1').text('Invoice No.');
                $('#model_header_2').text('Invoice Date');
                $('#model_header_3').text('Note');

            },
        });        
        // open popup
        $('#txt_modal_param').val('order_code');
        $('#modal_form').modal();
    });

    $('table').on('focusin', 'td[contenteditable]', function() {
        $(this).data('val', $(this).html());
    }).on('input', 'td[contenteditable]', function() {
        //re_calculate_total_received();
    }).on('keypress', 'td[contenteditable]', function (e) {
        if (e.keyCode == 13) {
            return false;
        }
    }).on('focusout', 'td[contenteditable]', function() {
        var prev = $(this).data('val');
        var data = $(this).html();
        if (!numberRegex.test(data)) {
            $(this).text(prev);
        } else {
            $(this).data('val', $(this).html());
        }
        re_calculate_total_received();
    });

    // return from modal (popup)
    $('body').on('click', 'a.a_click', function() {
        //console.log($(this).parents('tr').html());
        //console.log($(this).parents('tr').find('td:nth-child(1)').html());
        var code = $(this).parents('tr').find('td:nth-child(2)').children().html();
        var name = $(this).parents('tr').find('td:nth-child(3)').html();
        var note = $(this).parents('tr').find('td:nth-child(4)').html();
        var option = $(this).parents('tr').find('td:nth-child(5)').html();
        var eba = $(this).parents('tr').find('td:nth-child(6)').html();
        var eba1 = $(this).parents('tr').find('td:nth-child(7)').html();
        var eba2 = $(this).parents('tr').find('td:nth-child(8)').html();


        if ($('#txt_modal_param').val() == 'order_code') {
            $("#table_main tbody tr").each(function() {
                if ($(this).find('.order_no').html() == '*') {
                    $(this).find('.project_code_1 > span').html(code);
                    $(this).find('.invoice_date').html(name);
                    $(this).find('.invoice_full_amount').html(option);
                    $(this).find('.invoice_amount_remain').html(code);
                    
                }
            });
            
            re_calculate_total_received();
        } else if ($('#txt_modal_param').val() == 'customer_code') {
            $('#txt_CustomerCode').val(code);
            $('#txt_CustomerName').val(name);
        } else if ($('#txt_modal_param').val() == 'payment') {
            $('#txt_PaymentMethod').val(code);
        } else if ($('#txt_modal_param').val() == 'receipt_no') {
            $('#txt_ReceiptNo').val(code);
            $('#txt_ReceiptDate').val(name);
            $('#txt_CustomerCode').val(note);
            $('#txt_CustomerCode').change();
            $('#txt_PaymentMethod').val(option);
            $('#txt_PaymentReference').val(eba);
            $('#txt_TotalReceived').val(eba1);
            $('#txt_Remarks').val(eba2);

            get_receipt_detail(code);
        }

        $('#modal_form').modal('toggle');
    });

    // detect modal close form
    $('#modal_form').on('hidden.bs.modal', function () {
        re_order_no();
    });

    //disable_ui();
    reset_form();

    re_order_no();
    re_calculate_total_received();

    $('#btnNew').click(function () {
        reset_form();

        re_order_no();
        re_calculate_total_received();
    });
    $('#btnEdit').click(function () {
        $.ajax({
            url:  '/receipt/list',
            type:  'get',
            dataType:  'json',
            success: function  (data) {
                let rows =  '';
                var i = 1;
                data.receipts.forEach(receipt => {
                    var receipt_date = receipt.date;
                    receipt_date = receipt_date.slice(0,10).split('-').reverse().join('/');
                    rows += `
                    <tr class="d-flex">
                        <td class='col-1'>${i++}</td>
                        <td class='col-3'><a class='a_click' href='#'>${receipt.receipt_no}</a></td>
                        <td class='col-5'>${receipt.date}</td>
                        <td class='col-3'>${receipt.customer_code_id}</td>
                        <td class='hide'>${receipt.payment_method}</td>
                        <td class='hide'>${receipt.payment_reference}</td>
                        <td class='hide'>${receipt.total_receipt}</td>
                        <td class='hide'>${receipt.remarks}</td>

                    </tr>`;
                });
                $('#table_modal > tbody').html(rows);

                $('#model_header_1').text('Receipt No');
                $('#model_header_2').text('Receipt Date');
                $('#model_header_3').text('Customer Code');
                $('#model_header_4').text('Payment Method');
                $('#model_header_5').text('Payment Refernce');
                $('#model_header_6').text('Total Receive');
                $('#model_header_7').text('Remarks');
            },
        });        
        // open popup
        $('#txt_modal_param').val('receipt_no');
        $('#modal_form').modal();        
    });
    $('#btnSave').click(function () {

        var customer_code = $('#txt_CustomerName').val().trim();
        if (customer_code == '') {
            alert('กรุณาระบุ Customer');
            $('#txt_CustomerCode').focus();
            return false;
        }
        var receipt_date = $('#txt_ReceiptDate').val().trim();
        if (!dateRegex.test(receipt_date)) {
            alert('กรุณาระบุวันที่ ให้ถูกต้อง');
            $('#txt_ReceiptDate').focus();
            return false;
        }
        if ($('#txt_ReceiptNo').val() == '<new>') {
            var token = $('[name=csrfmiddlewaretoken]').val();
                  
            $.ajax({
                url:  '/receipt/create',
                type:  'post',
                data: $('#form_receipt').serialize() + "&lineitem=" +lineitem_to_json(),
                headers: { "X-CSRFToken": token },
                dataType:  'json',
                success: function  (data) {
                    if (data.error) {
                        alert(data.error);
                    } else {
                        $('#txt_ReceiptNo').val(data.receipt.receipt_no)
                        alert('บันทึกสำเร็จ');
                    }                    
                },
            });  
        } else {
            var token = $('[name=csrfmiddlewaretoken]').val();
            console.log($('#form_receipt').serialize());
            console.log(lineitem_to_json());
            $.ajax({
                url:  '/receipt/update/' + $('#txt_ReceiptNo').val(),
                type:  'post',
                data: $('#form_receipt').serialize() + "&lineitem=" +lineitem_to_json(),
                headers: { "X-CSRFToken": token },
                dataType:  'json',
                success: function  (data) {
                    if (data.error) {
                        alert(data.error);
                    } else {
                        alert('บันทึกสำเร็จ');
                    }
                },
            }); 
        }
        
    });

    $('#btnDelete').click(function () {
        if ($('#txt_ReceiptNo').val() == '<new>') {
            alert ('ไม่สามารถลบ Receipt ใหม่ได้');
            return false;
        }
        if (confirm ("คุณต้องการลบ Receipt No : '" + $('#txt_ReceiptNo').val() + "' ")) {
            console.log('Delete ' + $('#txt_ReceiptNo').val());
            var token = $('[name=csrfmiddlewaretoken]').val();
            $.ajax({
                url:  '/receipt/delete/' + $('#txt_ReceiptNo').val(),
                type:  'post',
                headers: { "X-CSRFToken": token },
                dataType:  'json',
                success: function  (data) {
                    reset_form();
                },
            });            
        }
    });
    $('#btnPdf').click(function () {
        if ($('#txt_ReceiptNo').val() == '<new>') {
            alert ('กรุณาระบุ Receipt No');
            return false;
        }
        window.open('/receipt/pdf/' + $('#txt_ReceiptNo').val());
    });
    $('#btnPrint').click(function () {
        window.open('/receipt/report');
    });

});

function lineitem_to_json () {
    var rows = [];
    var i = 0;
    $("#table_main tbody tr").each(function(index) {
        if ($(this).find('.project_code_1 > span').html() != '') {
            rows[i] = {};
            rows[i]["item_no"] = (i+1);
            rows[i]["order_code"] = $(this).find('.project_code_1 > span').html();
            rows[i]["invoice_date"] = $(this).find('.invoice_date').html();
            rows[i]["invoice_full_amount"] = $(this).find('.invoice_full_amount').html();
            rows[i]["invoice_amount_remain"] = $(this).find('.invoice_amount_remain').html();
            rows[i]["amount_paid_here"] = $(this).find('.amount_paid_here').html();
            i++;
        }
    });
    var obj = {};
    obj.lineitem = rows;
    //console.log(JSON.stringify(obj));

    return JSON.stringify(obj);
}

function get_receipt_detail (receipt_no) {
    $.ajax({
        url:  '/receipt/detail/' + encodeURIComponent(receipt_no),
        type:  'get',
        dataType:  'json',
        success: function  (data) {
            //console.log(data.receiptlineitem.length);

            reset_table();
            for(var i=ROW_NUMBER;i<data.receiptlineitem.length;i++) {
                $('.table-add').click();
            }
            var i = 0;
            $("#table_main tbody tr").each(function() {
                if (i < data.receiptlineitem.length) {
                    $(this).find('.project_code_1 > span').html(data.receiptlineitem[i].order_code);
                    $(this).find('.invoice_date').html(data.receiptlineitem[i].invoice_date);
                    $(this).find('.invoice_full_amount').html(data.receiptlineitem[i].invoice_full_amount);
                    $(this).find('.invoice_amount_remain').html(data.receiptlineitem[i].invoice_amount_remain);
                    $(this).find('.amount_paid_here').html(data.receiptlineitem[i].amount_paid_here);

                }
                i++;
            });
            re_calculate_total_received();
        },
    });
}

function re_calculate_total_received () {
    var total_received = 0;
    $("#table_main tbody tr").each(function() {

        var order_code = $(this).find('.project_code_1 > span').html();
        //console.log (order_code);

        var invoice_full_amount = $(this).find('.invoice_full_amount').html();
        $(this).find('.invoice_full_amount').html(((invoice_full_amount)));
        
        var amount_paid_here = $(this).find('.amount_paid_here').html();
        $(this).find('.amount_paid_here').html(parseInt(amount_paid_here));

        if (order_code != '') {
                var invoice_amount_remain = invoice_full_amount - amount_paid_here
                var amount_paid_here = invoice_full_amount - invoice_amount_remain
            $(this).find('.invoice_amount_remain').html(formatNumber(invoice_amount_remain));
            total_received += amount_paid_here;
        }
    });

    $('#lbl_TotalReceived').text(formatNumber(total_received));
    $('#txt_TotalReceived').val($('#lbl_TotalReceived').text());

}

function reset_form() {
    $('#txt_ReceiptNo').attr("disabled", "disabled");
    $('#txt_ReceiptNo').val('<new>');

    reset_table();
    
    $('#txt_ReceiptDate').val(new Date().toJSON().slice(0,10).split('-').reverse().join('/'));

    $('#txt_CustomerCode').val('');
    $('#txt_CustomerName').val('');
    $('#txt_PaymentMethod').val('');
    $('#txt_PaymentReference').val('');
    $('#txt_Remarks').val('');

    $('#lbl_TotalReceived').text('0.00');

}

function reset_table() {
    $('#table_main > tbody').html('');
    for(var i=1; i<= ROW_NUMBER; i++) {
        $('.table-add').click();
    }    
}

function re_order_no () {
    var i = 1;
    $("#table_main tbody tr").each(function() {
        $(this).find('.order_no').html(i);
        i++;
    });
}


function disable_ui () {
    $('#txt_ReceiptDate').attr("disabled", "disabled");
    $('#btn_ReceiptDate').attr("disabled", "disabled");
}

function enable_ui () {
    $('#txt_ReceiptDate').removeAttr("disabled");
    $('#btn_ReceiptDate').removeAttr("disabled");
}



function formatNumber (num) {
    if (num === '') return '';
    num = parseFloat(num); 
    return num.toFixed(2).toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,");
}

function isInt(n){
    return Number(n) === n && n % 1 === 0;
}

function isFloat(n){
    return Number(n) === n && n % 1 !== 0;
}

var dateRegex = /^(?=\d)(?:(?:31(?!.(?:0?[2469]|11))|(?:30|29)(?!.0?2)|29(?=.0?2.(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00)))(?:\x20|$))|(?:2[0-8]|1\d|0?[1-9]))([-.\/])(?:1[012]|0?[1-9])\1(?:1[6-9]|[2-9]\d)?\d\d(?:(?=\x20\d)\x20|$))?(((0?[1-9]|1[012])(:[0-5]\d){0,2}(\x20[AP]M))|([01]\d|2[0-3])(:[0-5]\d){1,2})?$/;
//var numberRegex = /^-?\d+\.?\d*$/;
var numberRegex = /^-?\d*\.?\d*$/