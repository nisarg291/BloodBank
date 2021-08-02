
//jquery validate init


$(function(){

    //Basic Validation
	
    $( "#signupForm" ).validate( {
        rules: {
            
            cityname: {
                required: true,
                minlength: 3,
                maxlength: 20
				
            },
            citydescription: {
                required: true,
                minlength: 3,
				maxlength:100
            },
            
        },
        messages: {
            
            cityName: {
                required: "Please enter a cityname",
                minlength: "Your cityname must consist of at least 3 characters",
                maxlength: "Your cityname must consist of at most 20 characters"
				
            },
            cityDescription: {
                  required: "Please enter a cityDescription",
                minlength: "Your cityDescription must consist of at least 3 characters",
                 maxlength: "Your cityname must consist of at most 100 characters"
				
            },
            
        },
        errorElement: "em",
        errorPlacement: function ( error, element ) {
            // Add the `help-block` class to the error element
            error.addClass( "help-block" );

            if ( element.prop( "type" ) === "checkbox" ) {
                error.insertAfter( element.parent( "label" ) );
            } else {
                error.insertAfter( element );
            }
        },
        highlight: function ( element, errorClass, validClass ) {
            $( element ).parents( ".col-sm-5" ).addClass( "has-error" ).removeClass( "has-success" );
        },
        unhighlight: function (element, errorClass, validClass) {
            $( element ).parents( ".col-sm-5" ).addClass( "has-success" ).removeClass( "has-error" );
        }
    } );

    $( "#addareaForm" ).validate( {
        rules: {
            
            areaname: {
                required: true,
                minlength: 3,
                maxlength: 20
				
            },
            pincode: {
                required: true,
                minlength: 6,
				maxlength:6
            },
            
        },
        messages: {
            
            areaName: {
                required: "Please enter a areaname",
                minlength: "Your areaname must consist of at least 3 characters",
                maxlength: "Your cityname must consist of at most 20 characters"
				
            },
            pinCode: {
                  required: "Please enter a pincode",
                minlength: "Your cityDescription must consist of at least 3 characters",
                 maxlength: "Your cityname must consist of at most 100 characters"
				
            },
            
        },
        errorElement: "em",
        errorPlacement: function ( error, element ) {
            // Add the `help-block` class to the error element
            error.addClass( "help-block" );

            if ( element.prop( "type" ) === "checkbox" ) {
                error.insertAfter( element.parent( "label" ) );
            } else {
                error.insertAfter( element );
            }
        },
        highlight: function ( element, errorClass, validClass ) {
            $( element ).parents( ".col-sm-5" ).addClass( "has-error" ).removeClass( "has-success" );
        },
        unhighlight: function (element, errorClass, validClass) {
            $( element ).parents( ".col-sm-5" ).addClass( "has-success" ).removeClass( "has-error" );
        }
    } );

    //Using feedback icons

    $( "#signupForm1" ).validate( {
        rules: {
            firstname1: "required",
            lastname1: "required",
            username1: {
                required: true,
                minlength: 2
            },
            password1: {
                required: true,
                minlength: 5
            },
            confirm_password1: {
                required: true,
                minlength: 5,
                equalTo: "#password1"
            },
            email1: {
                required: true,
                email: true
            },
            agree1: "required"
        },
        messages: {
            firstname1: "Please enter your firstname",
            lastname1: "Please enter your lastname",
            username1: {
                required: "Please enter a username",
                minlength: "Your username must consist of at least 2 characters"
            },
            password1: {
                required: "Please provide a password",
                minlength: "Your password must be at least 5 characters long"
            },
            confirm_password1: {
                required: "Please provide a password",
                minlength: "Your password must be at least 5 characters long",
                equalTo: "Please enter the same password as above"
            },
            email1: "Please enter a valid email address",
            agree1: "Please accept our policy"
        },
        errorElement: "em",
        errorPlacement: function ( error, element ) {
            // Add the `help-block` class to the error element
            error.addClass( "help-block" );

            // Add `has-feedback` class to the parent div.form-group
            // in order to add icons to inputs
            element.parents( ".col-sm-5" ).addClass( "has-feedback" );

           

            // Add the span element, if doesn't exists, and apply the icon classes to it.
            if ( !element.next( "span" )[ 0 ] ) {
                $( "<span class='fa fa-times form-control-feedback'></span>" ).insertAfter( element );
            }
        },
        success: function ( label, element ) {
            // Add the span element, if doesn't exists, and apply the icon classes to it.
            if ( !$( element ).next( "span" )[ 0 ] ) {
                $( "<span class='fa fa-check form-control-feedback'></span>" ).insertAfter( $( element ) );
            }
        },
        highlight: function ( element, errorClass, validClass ) {
            $( element ).parents( ".col-sm-5" ).addClass( "has-error" ).removeClass( "has-success" );
            $( element ).next( "span" ).addClass( "fa-times" ).removeClass( "fa-check" );
        },
        unhighlight: function ( element, errorClass, validClass ) {
            $( element ).parents( ".col-sm-5" ).addClass( "has-success" ).removeClass( "has-error" );
            $( element ).next( "span" ).addClass( "fa-check" ).removeClass( "fa-times" );
        }
    } );


    //semantic

    $( "#semanticForm" ).validate( {
        rules: {
            firstname2: "required",
            lastname2: "required",
            username2: {
                required: true,
                minlength: 2
            },
            password2: {
                required: true,
                minlength: 5
            },
            confirm_password2: {
                required: true,
                minlength: 5,
                equalTo: "#password"
            },
            email2: {
                required: true,
                email: true
            },
            agree2: "required"
        },
        messages: {
            firstname2: "Please enter your firstname",
            lastname2: "Please enter your lastname",
            username2: {
                required: "Please enter a username",
                minlength: "Your username must consist of at least 2 characters"
            },
            password2: {
                required: "Please provide a password",
                minlength: "Your password must be at least 5 characters long"
            },
            confirm_password2: {
                required: "Please provide a password",
                minlength: "Your password must be at least 5 characters long",
                equalTo: "Please enter the same password as above"
            },
            email2: "Please enter a valid email address",
            agree2: "Please accept our policy"
        },
        errorPlacement: function ( error, element ) {
            error.addClass( "ui red pointing label transition" );
            error.insertAfter( element.parent() );
        },
        highlight: function ( element, errorClass, validClass ) {
            $( element ).parents( ".row" ).addClass( errorClass );
        },
        unhighlight: function (element, errorClass, validClass) {
            $( element ).parents( ".row" ).removeClass( errorClass );
        }
    } );

});



