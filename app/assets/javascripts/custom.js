$(document).ready(function(){
    var pathname = window.location.pathname;
    if (pathname === '/'){
        $(".rootbutton").css({'color': '#337ab7', 'background-color': 'white'});
    }
    else if (pathname === '/overons'){
        $(".overonsbutton").css({'color': '#337ab7', 'background-color': 'white'});
    }
    else if (pathname === '/projecten'){
        $(".projectenbutton").css({'color': '#337ab7', 'background-color': 'white'});
    }
    else if (pathname === '/offertes/new'){
        $(".offertebutton").css({'color': '#337ab7', 'background-color': 'white'});
        }
    else if (pathname === '/contacts/new'){
        $(".contactbutton").css({'color': '#337ab7', 'background-color': 'white'});
    }
});
