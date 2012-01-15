// write your javascript in here

var parsepForm = function(data){
    //uses form data here;
    console.log(data);
};


$(document).ready(function(){
    
    var pform = $('#forms'),
        errorsLink = $('#errorsLink')
    ;
    
    pform.validate({
        invalidHandler: function(form, validator) {
            errorsLink.click();
            console.log(validator.submitted);
           var html = '';
           for(var key in validator.submitted){
            };
            $("#errorsLink ul").html(html);
        },
        submitHandler: function() {
            var data = pform.serializeArray();
            parsepForm(data);
        }
    });
    
});