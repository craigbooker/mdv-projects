// write your javascript in here

var parsepForm = function(data){
    //uses form data here;
    console.log(data);
};


$(document).ready(function(){
    
    var pform = $('#form'),
        errorsLink = $('#errorsLink')
    ;
    
    pform.validate({
        invalidHandler: function(form, validator) {
            errorsLink.click();
            //console.log(validator.submitted);
           var html = '';
           for(var key in validator.submitted){
                var label = $('label[for^="'+ key + '"]').not('[generated]');
                var legend = label.closest('fieldset').find('.ui-controlgroup-label');
                var fieldName = legend.length ? legend.text() : label.text();
                //console.log(fieldName);
                html += '<li>'+ fieldName + '</li>';
            };
            $("#recordErrors ul").html(html);
        },
        submitHandler: function() {
            var data = pform.serializeArray();
            parsepForm(data);
        }
    });
    
});