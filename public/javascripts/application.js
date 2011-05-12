
document.observe('dom:loaded',function(){ 
  
  var h1DemoIndex = $('demoIndex');
  if (h1DemoIndex) {
    h1DemoIndex.observe('click',function(){
      h1DemoIndex.remove();
    });
  };
  
  
});


