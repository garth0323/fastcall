module LandingPagesHelper

  def landing_page_script page
    script = "<script>
    $( document ).ready(function() {
      $( 'form' ).submit(function( event ) {
        var dataArray = $( this ).serializeArray(),
        dataObj = {};
        $(dataArray).each(function(i, field){
          dataObj[field.name] = field.value;
        });
        $.ajax({
          method: 'POST',
          url: 'http://localhost:3000/leads',
          data: {lead: { fields: dataObj, url: window.location.href, landing_page_id: #{page.id} } }
        });
        event.preventDefault();
      });
    });
    </script>"

    return script
  end

end
