//NAVBAR BUTTON COLORS ONLY FOR BIG SCREENS
if (screen.width >= 780){
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
}
//END OF BUTTON COLORS

//SCREEN ADJUSTMENT FOR BIG SCREENS
if (screen.width >= 1400){
    $(document).ready(function(){
        var setxlh = screen.height*0.9;
        $("#panelprojecten").css({'max-height':setxlh})
    });
}
//END OF ADJUSTMENT

//CLIENT SIDE FILE VALIDATION
function validateFiles(inputFile) {
  var maxExceededMessage = "Dit bestand overschrijdt de maximum grootte van 5 mb";
  var extErrorMessage = "Alleen afbeeldingen van het formaat; .jpg, .jpeg, .gif or .png zijn toegestaan";
  var allowedExtension = ["jpg", "jpeg", "gif", "png"];

  var extName;
  var maxFileSize = $(inputFile).data('max-file-size');
  var sizeExceeded = false;
  var extError = false;

  $.each(inputFile.files, function() {
    if (this.size && maxFileSize && this.size > parseInt(maxFileSize)) {sizeExceeded=true;};
    extName = this.name.split('.').pop();
    if ($.inArray(extName, allowedExtension) == -1) {extError=true;};
  });
  if (sizeExceeded) {
    window.alert(maxExceededMessage);
    $(inputFile).val('');
  };

  if (extError) {
    window.alert(extErrorMessage);
    $(inputFile).val('');
  };
}
//END OF CLIENT SIDE FILE VALIDATION